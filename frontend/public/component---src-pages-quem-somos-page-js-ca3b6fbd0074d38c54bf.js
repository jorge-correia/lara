(window.webpackJsonp=window.webpackJsonp||[]).push([[13],{"9eSz":function(e,t,a){"use strict";var r=a("TqRt");t.__esModule=!0,t.default=void 0;var i,n=r(a("PJYZ")),s=r(a("VbXa")),l=r(a("8OQS")),d=r(a("pVnL")),o=r(a("q1tI")),c=r(a("17x9")),u=function(e){var t=(0,d.default)({},e),a=t.resolutions,r=t.sizes,i=t.critical;return a&&(t.fixed=a,delete t.resolutions),r&&(t.fluid=r,delete t.sizes),i&&(t.loading="eager"),t.fluid&&(t.fluid=w([].concat(t.fluid))),t.fixed&&(t.fixed=w([].concat(t.fixed))),t},f=function(e){var t=e.media;return!!t&&(v&&!!window.matchMedia(t).matches)},m=function(e){var t=e.fluid,a=e.fixed,r=p(t||a||[]);return r&&r.src},p=function(e){if(v&&function(e){return!!e&&Array.isArray(e)&&e.some((function(e){return void 0!==e.media}))}(e)){var t=e.findIndex(f);if(-1!==t)return e[t];var a=e.findIndex((function(e){return void 0===e.media}));if(-1!==a)return e[a]}return e[0]},g=Object.create({}),h=function(e){var t=u(e),a=m(t);return g[a]||!1},b="undefined"!=typeof HTMLImageElement&&"loading"in HTMLImageElement.prototype,v="undefined"!=typeof window,E=v&&window.IntersectionObserver,y=new WeakMap;function S(e){return e.map((function(e){var t=e.src,a=e.srcSet,r=e.srcSetWebp,i=e.media,n=e.sizes;return o.default.createElement(o.default.Fragment,{key:t},r&&o.default.createElement("source",{type:"image/webp",media:i,srcSet:r,sizes:n}),a&&o.default.createElement("source",{media:i,srcSet:a,sizes:n}))}))}function w(e){var t=[],a=[];return e.forEach((function(e){return(e.media?t:a).push(e)})),[].concat(t,a)}function N(e){return e.map((function(e){var t=e.src,a=e.media,r=e.tracedSVG;return o.default.createElement("source",{key:t,media:a,srcSet:r})}))}function L(e){return e.map((function(e){var t=e.src,a=e.media,r=e.base64;return o.default.createElement("source",{key:t,media:a,srcSet:r})}))}function R(e,t){var a=e.srcSet,r=e.srcSetWebp,i=e.media,n=e.sizes;return"<source "+(t?"type='image/webp' ":"")+(i?'media="'+i+'" ':"")+'srcset="'+(t?r:a)+'" '+(n?'sizes="'+n+'" ':"")+"/>"}var x=function(e,t){var a=(void 0===i&&"undefined"!=typeof window&&window.IntersectionObserver&&(i=new window.IntersectionObserver((function(e){e.forEach((function(e){if(y.has(e.target)){var t=y.get(e.target);(e.isIntersecting||e.intersectionRatio>0)&&(i.unobserve(e.target),y.delete(e.target),t())}}))}),{rootMargin:"200px"})),i);return a&&(a.observe(e),y.set(e,t)),function(){a.unobserve(e),y.delete(e)}},I=function(e){var t=e.src?'src="'+e.src+'" ':'src="" ',a=e.sizes?'sizes="'+e.sizes+'" ':"",r=e.srcSet?'srcset="'+e.srcSet+'" ':"",i=e.title?'title="'+e.title+'" ':"",n=e.alt?'alt="'+e.alt+'" ':'alt="" ',s=e.width?'width="'+e.width+'" ':"",l=e.height?'height="'+e.height+'" ':"",d=e.crossOrigin?'crossorigin="'+e.crossOrigin+'" ':"",o=e.loading?'loading="'+e.loading+'" ':"",c=e.draggable?'draggable="'+e.draggable+'" ':"";return"<picture>"+e.imageVariants.map((function(e){return(e.srcSetWebp?R(e,!0):"")+R(e)})).join("")+"<img "+o+s+l+a+r+t+n+i+d+c+'style="position:absolute;top:0;left:0;opacity:1;width:100%;height:100%;object-fit:cover;object-position:center"/></picture>'},k=o.default.forwardRef((function(e,t){var a=e.src,r=e.imageVariants,i=e.generateSources,n=e.spreadProps,s=e.ariaHidden,l=o.default.createElement(O,(0,d.default)({ref:t,src:a},n,{ariaHidden:s}));return r.length>1?o.default.createElement("picture",null,i(r),l):l})),O=o.default.forwardRef((function(e,t){var a=e.sizes,r=e.srcSet,i=e.src,n=e.style,s=e.onLoad,c=e.onError,u=e.loading,f=e.draggable,m=e.ariaHidden,p=(0,l.default)(e,["sizes","srcSet","src","style","onLoad","onError","loading","draggable","ariaHidden"]);return o.default.createElement("img",(0,d.default)({"aria-hidden":m,sizes:a,srcSet:r,src:i},p,{onLoad:s,onError:c,ref:t,loading:u,draggable:f,style:(0,d.default)({position:"absolute",top:0,left:0,width:"100%",height:"100%",objectFit:"cover",objectPosition:"center"},n)}))}));O.propTypes={style:c.default.object,onError:c.default.func,onLoad:c.default.func};var z=function(e){function t(t){var a;(a=e.call(this,t)||this).seenBefore=v&&h(t),a.isCritical="eager"===t.loading||t.critical,a.addNoScript=!(a.isCritical&&!t.fadeIn),a.useIOSupport=!b&&E&&!a.isCritical&&!a.seenBefore;var r=a.isCritical||v&&(b||!a.useIOSupport);return a.state={isVisible:r,imgLoaded:!1,imgCached:!1,fadeIn:!a.seenBefore&&t.fadeIn,isHydrated:!1},a.imageRef=o.default.createRef(),a.placeholderRef=t.placeholderRef||o.default.createRef(),a.handleImageLoaded=a.handleImageLoaded.bind((0,n.default)(a)),a.handleRef=a.handleRef.bind((0,n.default)(a)),a}(0,s.default)(t,e);var a=t.prototype;return a.componentDidMount=function(){if(this.setState({isHydrated:v}),this.state.isVisible&&"function"==typeof this.props.onStartLoad&&this.props.onStartLoad({wasCached:h(this.props)}),this.isCritical){var e=this.imageRef.current;e&&e.complete&&this.handleImageLoaded()}},a.componentWillUnmount=function(){this.cleanUpListeners&&this.cleanUpListeners()},a.handleRef=function(e){var t=this;this.useIOSupport&&e&&(this.cleanUpListeners=x(e,(function(){var e=h(t.props);t.state.isVisible||"function"!=typeof t.props.onStartLoad||t.props.onStartLoad({wasCached:e}),t.setState({isVisible:!0},(function(){t.setState({imgLoaded:e,imgCached:!(!t.imageRef.current||!t.imageRef.current.currentSrc)})}))})))},a.handleImageLoaded=function(){var e,t,a;e=this.props,t=u(e),(a=m(t))&&(g[a]=!0),this.setState({imgLoaded:!0}),this.props.onLoad&&this.props.onLoad()},a.render=function(){var e=u(this.props),t=e.title,a=e.alt,r=e.className,i=e.style,n=void 0===i?{}:i,s=e.imgStyle,l=void 0===s?{}:s,c=e.placeholderStyle,f=void 0===c?{}:c,m=e.placeholderClassName,g=e.fluid,h=e.fixed,b=e.backgroundColor,v=e.durationFadeIn,E=e.Tag,y=e.itemProp,w=e.loading,R=e.draggable,x=g||h;if(!x)return null;var z=!1===this.state.fadeIn||this.state.imgLoaded,V=!0===this.state.fadeIn&&!this.state.imgCached,C=(0,d.default)({opacity:z?1:0,transition:V?"opacity "+v+"ms":"none"},l),H="boolean"==typeof b?"lightgray":b,P={transitionDelay:v+"ms"},T=(0,d.default)({opacity:this.state.imgLoaded?0:1},V&&P,l,f),j={title:t,alt:this.state.isVisible?"":a,style:T,className:m,itemProp:y},W=this.state.isHydrated?p(x):x[0];if(g)return o.default.createElement(E,{className:(r||"")+" gatsby-image-wrapper",style:(0,d.default)({position:"relative",overflow:"hidden",maxWidth:W.maxWidth?W.maxWidth+"px":null,maxHeight:W.maxHeight?W.maxHeight+"px":null},n),ref:this.handleRef,key:"fluid-"+JSON.stringify(W.srcSet)},o.default.createElement(E,{"aria-hidden":!0,style:{width:"100%",paddingBottom:100/W.aspectRatio+"%"}}),H&&o.default.createElement(E,{"aria-hidden":!0,title:t,style:(0,d.default)({backgroundColor:H,position:"absolute",top:0,bottom:0,opacity:this.state.imgLoaded?0:1,right:0,left:0},V&&P)}),W.base64&&o.default.createElement(k,{ariaHidden:!0,ref:this.placeholderRef,src:W.base64,spreadProps:j,imageVariants:x,generateSources:L}),W.tracedSVG&&o.default.createElement(k,{ariaHidden:!0,ref:this.placeholderRef,src:W.tracedSVG,spreadProps:j,imageVariants:x,generateSources:N}),this.state.isVisible&&o.default.createElement("picture",null,S(x),o.default.createElement(O,{alt:a,title:t,sizes:W.sizes,src:W.src,crossOrigin:this.props.crossOrigin,srcSet:W.srcSet,style:C,ref:this.imageRef,onLoad:this.handleImageLoaded,onError:this.props.onError,itemProp:y,loading:w,draggable:R})),this.addNoScript&&o.default.createElement("noscript",{dangerouslySetInnerHTML:{__html:I((0,d.default)({alt:a,title:t,loading:w},W,{imageVariants:x}))}}));if(h){var q=(0,d.default)({position:"relative",overflow:"hidden",display:"inline-block",width:W.width,height:W.height},n);return"inherit"===n.display&&delete q.display,o.default.createElement(E,{className:(r||"")+" gatsby-image-wrapper",style:q,ref:this.handleRef,key:"fixed-"+JSON.stringify(W.srcSet)},H&&o.default.createElement(E,{"aria-hidden":!0,title:t,style:(0,d.default)({backgroundColor:H,width:W.width,opacity:this.state.imgLoaded?0:1,height:W.height},V&&P)}),W.base64&&o.default.createElement(k,{ariaHidden:!0,ref:this.placeholderRef,src:W.base64,spreadProps:j,imageVariants:x,generateSources:L}),W.tracedSVG&&o.default.createElement(k,{ariaHidden:!0,ref:this.placeholderRef,src:W.tracedSVG,spreadProps:j,imageVariants:x,generateSources:N}),this.state.isVisible&&o.default.createElement("picture",null,S(x),o.default.createElement(O,{alt:a,title:t,width:W.width,height:W.height,sizes:W.sizes,src:W.src,crossOrigin:this.props.crossOrigin,srcSet:W.srcSet,style:C,ref:this.imageRef,onLoad:this.handleImageLoaded,onError:this.props.onError,itemProp:y,loading:w,draggable:R})),this.addNoScript&&o.default.createElement("noscript",{dangerouslySetInnerHTML:{__html:I((0,d.default)({alt:a,title:t,loading:w},W,{imageVariants:x}))}}))}return null},t}(o.default.Component);z.defaultProps={fadeIn:!0,durationFadeIn:500,alt:"",Tag:"div",loading:"lazy"};var V=c.default.shape({width:c.default.number.isRequired,height:c.default.number.isRequired,src:c.default.string.isRequired,srcSet:c.default.string.isRequired,base64:c.default.string,tracedSVG:c.default.string,srcWebp:c.default.string,srcSetWebp:c.default.string,media:c.default.string}),C=c.default.shape({aspectRatio:c.default.number.isRequired,src:c.default.string.isRequired,srcSet:c.default.string.isRequired,sizes:c.default.string.isRequired,base64:c.default.string,tracedSVG:c.default.string,srcWebp:c.default.string,srcSetWebp:c.default.string,media:c.default.string,maxWidth:c.default.number,maxHeight:c.default.number});function H(e){return function(t,a,r){var i;if(!t.fixed&&!t.fluid)throw new Error("The prop `fluid` or `fixed` is marked as required in `"+r+"`, but their values are both `undefined`.");c.default.checkPropTypes(((i={})[a]=e,i),t,"prop",r)}}z.propTypes={resolutions:V,sizes:C,fixed:H(c.default.oneOfType([V,c.default.arrayOf(V)])),fluid:H(c.default.oneOfType([C,c.default.arrayOf(C)])),fadeIn:c.default.bool,durationFadeIn:c.default.number,title:c.default.string,alt:c.default.string,className:c.default.oneOfType([c.default.string,c.default.object]),critical:c.default.bool,crossOrigin:c.default.oneOfType([c.default.string,c.default.bool]),style:c.default.object,imgStyle:c.default.object,placeholderStyle:c.default.object,placeholderClassName:c.default.string,backgroundColor:c.default.oneOfType([c.default.string,c.default.bool]),onLoad:c.default.func,onError:c.default.func,onStartLoad:c.default.func,Tag:c.default.string,itemProp:c.default.string,loading:c.default.oneOf(["auto","lazy","eager"]),draggable:c.default.bool};var P=z;t.default=P},elW8:function(e,t,a){"use strict";a.r(t);var r=a("q1tI"),i=a.n(r),n=(a("HY6h"),a("tpfS"),a("9a8T")),s=a.n(n),l=a("RMg3");var d=a("W/9C"),o=a("hGpt"),c=a.n(o),u=a("Wbzz"),f=a("9eSz"),m=a.n(f),p=(a("oXeF"),"4277683415"),g=function(){var e=Object(u.c)(p);return i.a.createElement("div",null,i.a.createElement("section",{className:"secao2"},i.a.createElement("div",{className:"container"},i.a.createElement("h2",{className:"funcao"},"Professores"),i.a.createElement("div",{id:"deck-professores",className:"card-deck"},e.allStrapiCardProfessores.edges.map((function(e){return i.a.createElement("div",{className:"card","data-aos":"zoom-in-up",key:e.node.strapiId},i.a.createElement("div",{className:"title text-center"},i.a.createElement("br",null),i.a.createElement("h3",{className:"nome"},e.node.nomeProfessor),i.a.createElement(m.a,{src:"../../../strapi/public/uploads/i_Stock_648229868_1024x909_e96a27f111.jpg",className:"img-redonda",alt:""})),i.a.createElement("div",{className:"descricao"},i.a.createElement("p",{id:"ptext"},e.node.descricaoProfessor)),i.a.createElement("div",{className:"div-prof-lattes"},i.a.createElement(u.a,{className:"prof-lattes",to:e.node.lattesProfessor},"Lattes")))}))))))},h=a("wkdo"),b=a.n(h),v="1272874413",E=function(){var e=Object(u.c)(v);return i.a.createElement("div",null,i.a.createElement("div",{className:"container"},i.a.createElement("h2",{className:"funcao titulo-alunos"},"Alunos"),i.a.createElement("div",{className:"container d-flex justify-content-center"},i.a.createElement("div",{className:"row row-cols-1 row-cols-md-2"},e.allStrapiCardAlunos.edges.map((function(e){return i.a.createElement("div",{className:"col mb-4",key:e.node.strapiId},i.a.createElement("div",{className:"card card-aluno","data-aos":"zoom-in"},i.a.createElement("div",{className:"card-body"},i.a.createElement("h5",{className:"card-title"},e.node.nomeAluno),i.a.createElement("a",{className:"aluno-lattes",href:"#"},e.node.lattesAluno),i.a.createElement("div",{className:"div-btn-link"},i.a.createElement("button",{className:"btn btn-link",type:"button"},i.a.createElement(u.a,{className:"linkedin",to:e.node.linkedinAluno},i.a.createElement("img",{src:b.a,width:60,height:60,alt:"foto aluno"})," "))))))}))))))};t.default=function(){return Object(r.useEffect)((function(){s.a.init(),s.a.refresh()}),[]),i.a.createElement(i.a.Fragment,null,i.a.createElement(l.a,{page:"quemsomos"}),i.a.createElement("section",{className:"secao1"},i.a.createElement("div",{className:"container sobre-nos"},i.a.createElement("div",{className:"row"},i.a.createElement("div",{className:"col-sm-6 coluna"},i.a.createElement("h2",{className:"titulo-nos"},"Quem somos?"),i.a.createElement("p",{className:"desc-nos"},"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")),i.a.createElement("div",{className:"col-sm-6 coluna"},i.a.createElement("img",{className:"img-nos","data-aos":"fade-left",src:c.a})))),i.a.createElement("svg",{id:"divisoria",viewBox:"0 0 1280 187.25"},i.a.createElement("defs",null),i.a.createElement("path",{className:"cls-1",d:"M1280,499.33c-184.35,85.22-418.76,153.33-594.33,43.34-21.25-13.31-29.24-21.47-50-35C528.53,437.82,343.26,395.39,0,509.33V626H1280Z",transform:"translate(0 -438.75)"}))),i.a.createElement(g,null),i.a.createElement(E,null),i.a.createElement(d.a,null))}},hGpt:function(e,t,a){e.exports=a.p+"static/equipe-92c7816a89027f96bbc3101382715504.png"},oXeF:function(e,t,a){e.exports=a.p+"static/i_Stock_648229868_1024x909_e96a27f111-6deabfd9829d168e986e4e290d12302f.jpg"},tpfS:function(e,t,a){},wkdo:function(e,t,a){e.exports=a.p+"static/linkedin-ef1b0185c1fb0889798222e444849911.png"}}]);
//# sourceMappingURL=component---src-pages-quem-somos-page-js-ca3b6fbd0074d38c54bf.js.map