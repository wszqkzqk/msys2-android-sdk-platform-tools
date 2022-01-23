# Maintainer: wszqkzqk <wszqkzqk@qq.com>

pkgname=msys2-android-sdk-platform-tools
pkgver=31.0.3
pkgrel=1
pkgdesc='Platform-Tools for Google Android SDK (adb and fastboot)'
arch=('x86_64')
url='http://developer.android.com/sdk/index.html'
license=('custom')
depends=('zlib' 'ncurses')
provides=('adb' 'android-tools')
conflicts=('adb')
source=("https://dl.google.com/android/repository/platform-tools_r${pkgver}-windows.zip"
        "license.html")
sha256sums=('0f4b8fdd26af2c3733539d6eebb3c2ed499ea1d4bb1f4e0ecc2d6016961a6e24'
            'a7f3a259290ae6a5dc61bd34ecae36e2b7e2f644865ddc3c7fde5d248b8a7cef')

package() {
  # 使用系统的libwinpthread-1.dll，不要复制 "${srcdir}/platform-tools/libwinpthread-1.dll"
  mkdir "${pkgdir}/usr"
  mkdir "${pkgdir}/usr/share"
  mkdir "${pkgdir}/usr/share/licenses"
  mkdir "${pkgdir}/usr/share/licenses/${pkgname}"
  mkdir "${pkgdir}/usr/share/${pkgname}"
  mkdir "${pkgdir}/usr/bin"
  cp "${srcdir}/license.html" "${pkgdir}/usr/share/licenses/${pkgname}/license.html"
  chmod -R +rX "${srcdir}"/platform-tools/*.exe
  cp "${srcdir}/platform-tools/adb.exe" "${pkgdir}/usr/bin/adb.exe"
  cp "${srcdir}/platform-tools/AdbWinApi.dll" "${pkgdir}/usr/bin/AdbWinApi.dll"
  cp "${srcdir}/platform-tools/AdbWinUsbApi.dll" "${pkgdir}/usr/bin/AdbWinUsbApi.dll"
  cp "${srcdir}/platform-tools/dmtracedump.exe" "${pkgdir}/usr/bin/dmtracedump.exe"
  cp "${srcdir}/platform-tools/etc1tool.exe" "${pkgdir}/usr/bin/etc1tool.exe"
  cp "${srcdir}/platform-tools/fastboot.exe" "${pkgdir}/usr/bin/fastboot.exe"
  cp "${srcdir}/platform-tools/hprof-conv.exe" "${pkgdir}/usr/bin/hprof-conv.exe"
  cp "${srcdir}/platform-tools/make_f2fs.exe" "${pkgdir}/usr/bin/make_f2fs.exe"
  cp "${srcdir}/platform-tools/make_f2fs_casefold.exe" "${pkgdir}/usr/bin/make_f2fs_casefold.exe"
  cp "${srcdir}/platform-tools/mke2fs.conf" "${pkgdir}/usr/bin/mke2fs.conf"
  cp "${srcdir}/platform-tools/mke2fs.exe" "${pkgdir}/usr/bin/mke2fs.exe"
  cp "${srcdir}/platform-tools/sqlite3.exe" "${pkgdir}/usr/bin/sqlite3.exe"
  cp "${srcdir}/platform-tools/source.properties" "${pkgdir}/usr/share/${pkgname}/source.properties"
}
