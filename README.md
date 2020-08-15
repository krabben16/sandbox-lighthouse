# test-lighthouse

&#x26a0; 2020/08/15現在 以下のエラーが発生して動作しません

```
:
  ChromeLauncher Waiting for browser....................................................................................................... +507ms
  ChromeLauncher:error connect ECONNREFUSED 127.0.0.1:34843 +6ms
  ChromeLauncher:error Logging contents of /tmp/lighthouse.BCTFPFW/chrome-err.log +3ms
  ChromeLauncher:error [0815/051830.154881:FATAL:zygote_host_impl_linux.cc(116)] No usable sandbox! Update your kernel or see https://chromium.googlesource.com/chromium/src/+/master/docs/linux_suid_sandbox_development.md for more information on developing with the SUID sandbox. If you want to live dangerously and need an immediate workaround, you can try using --no-sandbox.
```

```shell
docker-compose up -d
docker-compose exec lighthouse bash
```

```shell
cd /home/src
bash lighthouse.sh
```
