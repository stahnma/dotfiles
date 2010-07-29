
if (host ncc01905.fpd.cat.com &> /dev/null ) ; then
  export http_proxy=http://proxy.fpd.cat.com
  export no_proxy=cat.com
  export HTTP_PROXY=http://proxy.fpd.cat.com
  export NO_PROXY=cat.com
fi
