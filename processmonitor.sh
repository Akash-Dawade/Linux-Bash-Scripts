#!/bin/bash

echo "Top 10 processes by memory usgae:"

ps aux --sort=-%mem | head -11

echo ""

echo "Total running processes: $(ps aux | wc -l)"
