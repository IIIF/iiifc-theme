require 'fileutils'
require 'html-proofer'
require 'yaml'

SITE_DIR = './_site'
CONFIG   = YAML.load_file './_config.yml'
SITE_ID  = ENV['SITE_ID'] || CONFIG.fetch('site_id', 'root')

module Iiifc ; end
