(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/caipinOrder/confirm"],{"093a":function(e,n,t){"use strict";t.r(n);var r=t("d492"),a=t("774e");for(var o in a)"default"!==o&&function(e){t.d(n,e,(function(){return a[e]}))}(o);t("a902");var u,i=t("f0c5"),c=Object(i["a"])(a["default"],r["b"],r["c"],!1,null,null,null,!1,r["a"],u);n["default"]=c.exports},"54e6":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=a(t("a34a"));function a(e){return e&&e.__esModule?e:{default:e}}function o(e,n,t,r,a,o,u){try{var i=e[o](u),c=i.value}catch(s){return void t(s)}i.done?n(c):Promise.resolve(c).then(r,a)}function u(e){return function(){var n=this,t=arguments;return new Promise((function(r,a){var u=e.apply(n,t);function i(e){o(u,r,a,i,c,"next",e)}function c(e){o(u,r,a,i,c,"throw",e)}i(void 0)}))}}var i={data:function(){return{user:{},orderGoods:[],maxNewMouey:0,caipinOrderPaymentTypes:1,zhi:[{id:1,val:"余额"},{id:2,val:"积分"}],zhekou:1}},onLoad:function(n){var t=this;return u(r.default.mark((function n(){var a;return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(t.orderGoods=e.getStorageSync("orderGoods"),t.orderGoods.length>0)for(a=0;a<t.orderGoods.length;a++)t.maxNewMouey=t.maxNewMouey+parseFloat(t.orderGoods[a].caipinNewMoney)*t.orderGoods[a].buyNumber;e.removeStorageSync("orderGoods");case 3:case"end":return n.stop()}}),n)})))()},onShow:function(){var n=this;return u(r.default.mark((function t(){var a,o,u,i;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return a=n,o=e.getStorageSync("nowTable"),t.next=4,a.$api.session(o);case 4:return u=t.sent,a.user=u.data,t.next=8,a.$api.page("dictionary",{dicCode:"huiyuandengji_types",dicName:"会员等级类型",codeIndexStart:a.user.huiyuandengjiTypes,codeIndexEnd:a.user.huiyuandengjiTypes});case 8:i=t.sent,i.data.list.length>0&&(a.zhekou=i.data.list[0].beizhu);case 10:case"end":return t.stop()}}),t)})))()},methods:{onSubmitTap:function(){var n=this;return u(r.default.mark((function t(){var a;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:a=n,e.getStorageSync("nowTable"),e.showModal({title:"提示",content:"是否确认支付",success:function(){var e=u(r.default.mark((function e(n){var t;return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!n.confirm){e.next=5;break}return t={caipins:JSON.stringify(a.orderGoods),yonghuId:a.user.id,caipinOrderPaymentTypes:a.caipinOrderPaymentTypes},e.next=4,a.$api.requestConditionDataGet("caipinOrder","order",null,t);case 4:a.$utils.jump("/pages/caipinOrder/list");case 5:case"end":return e.stop()}}),e)})));function n(n){return e.apply(this,arguments)}return n}()});case 3:case"end":return t.stop()}}),t)})))()}}};n.default=i}).call(this,t("543d")["default"])},"774e":function(e,n,t){"use strict";t.r(n);var r=t("54e6"),a=t.n(r);for(var o in r)"default"!==o&&function(e){t.d(n,e,(function(){return r[e]}))}(o);n["default"]=a.a},7842:function(e,n,t){},a517:function(e,n,t){"use strict";(function(e){t("48e8");r(t("66fd"));var n=r(t("093a"));function r(e){return e&&e.__esModule?e:{default:e}}wx.__webpack_require_UNI_MP_PLUGIN__=t,e(n.default)}).call(this,t("543d")["createPage"])},a902:function(e,n,t){"use strict";var r=t("7842"),a=t.n(r);a.a},d492:function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return a})),t.d(n,"c",(function(){return o})),t.d(n,"a",(function(){return r}));var a=function(){var e=this,n=e.$createElement,t=(e._self._c,1==e.caipinOrderPaymentTypes?e.maxNewMouey.toFixed(2):null),r=1==e.caipinOrderPaymentTypes?(e.maxNewMouey*e.zhekou).toFixed(2):null,a=2==e.caipinOrderPaymentTypes?e.maxNewMouey.toFixed(2):null;e.$mp.data=Object.assign({},{$root:{g0:t,g1:r,g2:a}})},o=[]}},[["a517","common/runtime","common/vendor"]]]);