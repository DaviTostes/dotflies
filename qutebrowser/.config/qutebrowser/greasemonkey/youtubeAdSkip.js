// ==UserScript==
// u/name         Auto Skip YouTube Ads
// u/version      1.0.0
// u/description  Speed up and skip YouTube ads automatically
// u/author       jso8910
// u/match        *://*.youtube.com/*
// u/exclude      *://*.youtube.com/subscribe_embed?*
// ==/UserScript==
setInterval(() => {
  try {
    let ad = document.querySelector('.ad-showing')

    if (ad) {
      ad.firstChild.firstChild.currentTime = 99999
      document.querySelector('.ytp-ad-skip-button-modern').click()
    }
  } catch { }
}, 1000);
