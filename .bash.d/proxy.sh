
if (host beaker.cis.cat.com &> /dev/null ) ; then
  export http_proxy=http://stahnma:${WEB_PIN}@webproxy.fpd.cat.com
  export no_proxy=cat.com
  export HTTP_PROXY=http://stahnma:${WEB_PIN}@webproxy.fpd.cat.com
  export NO_PROXY=cat.com
fi
