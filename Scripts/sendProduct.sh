#!/usr/bin/env bash
#product name
PRODUCT_NAME="OCUnitTestDemo"
#product version
VERSION="1.0"

#product dir
PRODUCT_DIR="./Product/"
#archive file 
ARCHIVE_FILE="./${PRODUCT_NAME}-V${VERSION}.zip"

#mail subject
Subject="${PRODUCT_NAME} version ${VERSION}"
#recipient list
RECIPIENTS="476702292@qq.com"
#mail message
Message="这是您的安装包，请注意查收！"

#prepare archive file
if [ -f ${ARCHIVE_FILE} ];then
rm -rf ${ARCHIVE_FILE}
else
zip -rj ${ARCHIVE_FILE} ${PRODUCT_DIR}
fi

#send mail
if [ ! -f ${ARCHIVE_FILE} ];then
exit
else
#Send mail with mutt. So you must have mutt installed and configured properly.
#You can also use other MUA you like, but change this line also. 
echo "${Message}" | mutt -s "${Subject}" -a ${ARCHIVE_FILE} -- ${RECIPIENTS}
#clean the archive file
rm -rf ${ARCHIVE_FILE}
fi
