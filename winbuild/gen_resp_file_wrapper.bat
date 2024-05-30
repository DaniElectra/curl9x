@echo off
rem ***************************************************************************
rem *                                  _   _ ____  _
rem *  Project                     ___| | | |  _ \| |
rem *                             / __| | | | |_) | |
rem *                            | (__| |_| |  _ <| |___
rem *                             \___|\___/|_| \_\_____|
rem *
rem * Copyright (C) Daniel Stenberg, <daniel@haxx.se>, et al.
rem *
rem * This software is licensed as described in the file COPYING, which
rem * you should have received as part of this distribution. The terms
rem * are also available at https://curl.se/docs/copyright.html.
rem *
rem * You may opt to use, copy, modify, merge, publish, distribute and/or sell
rem * copies of the Software, and permit persons to whom the Software is
rem * furnished to do so, under the terms of the COPYING file.
rem *
rem * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
rem * KIND, either express or implied.
rem *
rem * SPDX-License-Identifier: curl
rem *
rem ***************************************************************************
rem Visual C++ 6 gives errors about too long commands, so we have to workaround it this way

SET DIROBJ=%LIBCURL_DIROBJ%
SET MACRO_NAME=LIBCURL_OBJS
SET OUTFILE=LIBCURL_OBJS.inc

CALL gen_resp_file.bat altsvc.obj            amigaos.obj           asyn-ares.obj         asyn-thread.obj       base64.obj            bufq.obj              bufref.obj            c-hyper.obj           cf-h1-proxy.obj       cf-h2-proxy.obj       cf-haproxy.obj        cf-https-connect.obj  cf-socket.obj         cfilters.obj          conncache.obj         connect.obj           content_encoding.obj  cookie.obj            curl_addrinfo.obj     curl_des.obj          curl_endian.obj       curl_fnmatch.obj      curl_get_line.obj     curl_gethostname.obj  curl_gssapi.obj       curl_memrchr.obj      curl_multibyte.obj    curl_ntlm_core.obj    curl_ntlm_wb.obj      curl_path.obj         curl_range.obj        curl_rtmp.obj         curl_sasl.obj         curl_sspi.obj         curl_threads.obj      curl_trc.obj          dict.obj              doh.obj               dynbuf.obj            dynhds.obj            easy.obj              easygetopt.obj        easyoptions.obj       escape.obj            file.obj              fileinfo.obj          fopen.obj             formdata.obj          ftp.obj               ftplistparser.obj     getenv.obj            getinfo.obj           gopher.obj            hash.obj              headers.obj           hmac.obj              hostasyn.obj          hostip.obj            hostip4.obj           hostip6.obj           hostsyn.obj           hsts.obj              http.obj              http1.obj             http2.obj             http_aws_sigv4.obj    http_chunks.obj       http_digest.obj       http_negotiate.obj    http_ntlm.obj         http_proxy.obj        idn.obj               if2ip.obj             imap.obj              inet_ntop.obj         inet_pton.obj         krb5.obj              ldap.obj              llist.obj             macos.obj             md4.obj               md5.obj               memdebug.obj          mime.obj mprintf.obj           mqtt.obj              multi.obj             netrc.obj             nonblock.obj          noproxy.obj           openldap.obj          parsedate.obj         pingpong.obj          pop3.obj              progress.obj          psl.obj               rand.obj              rename.obj            rtsp.obj              select.obj            sendf.obj             setopt.obj            sha256.obj            share.obj             slist.obj             smb.obj     smtp.obj              socketpair.obj        socks.obj             socks_gssapi.obj      socks_sspi.obj        speedcheck.obj        splay.obj             strcase.obj           strdup.obj            strerror.obj          strtok.obj            strtoofft.obj         system_win32.obj      telnet.obj            tftp.obj              timediff.obj          timeval.obj           transfer.obj          url.obj               urlapi.obj            version.obj           version_win32.obj     warnless.obj          ws.obj vauth/cleartext.obj      vauth/cram.obj           vauth/digest.obj         vauth/digest_sspi.obj    vauth/gsasl.obj          vauth/krb5_gssapi.obj    vauth/krb5_sspi.obj      vauth/ntlm.obj           vauth/ntlm_sspi.obj      vauth/oauth2.obj         vauth/spnego_gssapi.obj  vauth/spnego_sspi.obj    vauth/vauth.obj vtls/bearssl.obj             vtls/gtls.obj                vtls/hostcheck.obj           vtls/keylog.obj              vtls/mbedtls.obj             vtls/mbedtls_threadlock.obj  vtls/openssl.obj             vtls/rustls.obj              vtls/schannel.obj            vtls/schannel_verify.obj     vtls/sectransp.obj           vtls/vtls.obj                vtls/wolfssl.obj             vtls/x509asn1.obj  vquic/curl_msh3.obj    vquic/curl_ngtcp2.obj    vquic/curl_quiche.obj    vquic/vquic.obj vssh/libssh.obj     vssh/libssh2.obj    vssh/wolfssh.obj

SET DIROBJ=%CURL_DIROBJ%
SET MACRO_NAME=CURL_OBJS
SET OUTFILE=CURL_OBJS.inc

CALL gen_resp_file.bat slist_wc.obj  tool_binmode.obj  tool_bname.obj  tool_cb_dbg.obj  tool_cb_hdr.obj  tool_cb_prg.obj  tool_cb_rea.obj  tool_cb_see.obj  tool_cb_wrt.obj  tool_cfgable.obj  tool_dirhie.obj  tool_doswin.obj  tool_easysrc.obj  tool_filetime.obj  tool_findfile.obj  tool_formparse.obj  tool_getparam.obj  tool_getpass.obj  tool_help.obj  tool_helpers.obj    tool_libinfo.obj  tool_listhelp.obj  tool_main.obj  tool_msgs.obj  tool_operate.obj  tool_operhlp.obj  tool_paramhlp.obj  tool_parsecfg.obj  tool_progress.obj  tool_setopt.obj  tool_sleep.obj  tool_stderr.obj  tool_strdup.obj  tool_urlglob.obj  tool_util.obj  tool_vms.obj  tool_writeout.obj  tool_writeout_json.obj  tool_xattr.obj  var.obj