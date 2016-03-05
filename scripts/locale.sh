## Locale
# Avoid https://blogs.oracle.com/sakshijain/entry/the_problem_of_setting_locale
# e.g. when setting up java
echo 'start setting locale'
update-locale LC_ALL=en_US.UTF-8
dpkg-reconfigure locales
echo 'end setting locale'
