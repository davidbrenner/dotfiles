# -*- coding: utf-8 -*-
"""
Display accuweather current weather
Configuration parameters:
    - cache_timeout : how often to check for new forecasts
    - city_code : city code to use
    - request_timeout : check timeout
The city_code in this example is for Eden, NY -> 14057
"""

from time import time
import requests
import re


class Py3status:

    # available configuration parameters
    cache_timeout = 1800
    city_code = '14057'
    request_timeout = 10

    def _get_weather(self):
        """
        Get weather from accuweather
        curl --connect-timeout 30 -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${METRIC}\&locCode\=$1 | perl -ne 
        <title>Currently: Mostly Sunny: 49F</title>
        
        'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'
        """
        url = 'http://rss.accuweather.com/rss/liveweather_rss.asp?metric=0&locCode=%s' % self.city_code
        q = requests.get(url)

        status = q.status_code
        weather = ''

        #print("=====================\n", q.text, "===============================\n")
        if status == 200:
            m = re.search(r"<title>Currently: (.*)?</title>", q.text)
            #print(m.group(1))
            weather = m.group(1)
        else:
            raise Exception('got status {}'.format(status))

        # return current weather
        return weather

    def _get_icon(self, weather):
        """
        Return an unicode icon based on the forecast code and text
        See: http://developer.yahoo.com/weather/#codes
        """
        icons = ['☀', '☁', '☂', '☃', '?']
        text = weather.lower()

        # sun
        if 'sun' in text:
            code = 0

        # cloud / early rain
        elif 'cloud' in text:
            code = 1

        # rain
        elif 'rain' in text:
            code = 2

        # snow
        elif 'snow' in text:
            code = 3

        # dunno
        else:
            code = -1

        return icons[code]

    def weather(self, i3s_output_list, i3s_config):
        """
        This method gets executed by py3status
        """
        response = {
            'cached_until': time() + self.cache_timeout,
            'full_text': ''
        }

        weather = self._get_weather()
        icon = self._get_icon(weather)
        response['full_text'] += '{} {}'.format(icon, weather)
        response['full_text'] = response['full_text'].strip()

        return response

if __name__ == "__main__":
    """
    Test this module by calling it directly.
    """
    from time import sleep
    x = Py3status()
    config = {
        'color_good': '#00FF00',
        'color_bad': '#FF0000',
    }
    while True:
        print(x.weather([], config))
        sleep(1)
