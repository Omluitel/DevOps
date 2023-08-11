#!/bin/bash
is_even() {
    (($1 % 2 == 0)) && echo "Even" || echo "Odd"
}
