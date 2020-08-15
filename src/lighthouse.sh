#!/bin/bash

lighthouse --output html --output-path ./report.html --throttling-method=provided --chrome-flags="--headless" https://www.google.com
