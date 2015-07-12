#!/usr/bin/env perl

use strict;
use warnings;
use Log::Log4perl;

my $log_layout = 'Log::Log4perl::Layout::PatternLayout';
my $log_layout_template = '%d{ISO8601} [%p] %m{chomp}%n';
my $log_file     = 'my_log.log';

my $log_conf = qq(
    log4perl.logger = DEBUG, Screen, File

    log4perl.appender.Screen = Log::Log4perl::Appender::Screen
    log4perl.appender.Screen.stderr = 0
    log4perl.appender.Screen.layout = $log_layout
    log4perl.appender.Screen.layout.ConversionPattern = $log_template
    log4perl.appender.Screen.Threshold = INFO

    log4perl.appender.File = Log::Log4perl::Appender::File
    log4perl.appender.File.mode = write
    log4perl.appender.File.filename = $log_file
    log4perl.appender.File.layout = $log_layout
    log4perl.appender.File.layout.ConversionPattern = $log_template
);

Log::Log4perl->init( \$log_conf );
my $logger = Log::Log4perl->get_logger();
