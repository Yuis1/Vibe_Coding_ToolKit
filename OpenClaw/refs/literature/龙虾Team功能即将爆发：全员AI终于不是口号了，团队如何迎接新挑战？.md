---
dg-publish:
作者:
创建时间: 2026-03-04 18:46:26
修改时间: 2026-03-04 19:05:15
---

过去两个月，我写了三篇龙虾生态观察，从个人踩坑、创业分层、到产品形态预测。核心判断是：agent的正确形态应该嵌入在你日常使用的通讯软件里，而不是一个独立App。

写完第三篇以后，我密集接触了几个正在做team方向的团队。他们展示的案例对我冲击非常大——一个agent在接入了公司数据以后，做出了人类团队两三个月都没搭出来的决策体系。

这让我意识到一件事：我们一直在讨论"个人怎么用龙虾"，但真正的生产力爆发不在个人层面，在团队层面。

这也让我重新思考了一个被喊了很久的概念——全员AI。

![Image](Z-attach/Image-18.webp)

"全员AI"这四个字在过去一年被各种培训机构、企业管理者反复提起。但你去看大多数企业在做的事情，所谓"全员AI"就是组织一场培训、让员工学写prompt、再来一个21天打卡计划。培训结束，大家各回各的工位，该怎么用Excel还是怎么用Excel。

这不是全员AI。这是全员学工具。

龙虾team功能的出现，让"全员AI"第一次有了真正落地的可能。它的意义在于让AI进入人的工作流。当AI在你的飞书群聊里跟同事并列存在，你不需要主动打开任何网页，全员AI才真正开始。

这篇文章想聊的就是这件事：当龙虾从单兵进入团队，"全员AI"到底意味着什么，以及怎么做。

___

## 一、大多数企业还在把AI当铲子用

先说一个比喻。

解放体力的工具有两类：铲子和挖掘机。铲子你还得用自己的力气挖，挖掘机不需要。

现在大多数企业用AI的方式，还是铲子模式。员工打开ChatGPT，搜个资料，写个邮件，翻译个文档。AI在这个场景下就是一个高级搜索引擎，一个效率提升10%到20%的辅助工具。这跟十年前企业培训员工怎么用Excel没有本质区别。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

为什么？因为人没有变。

我在做直播的过程中跟很多AI行业的创业者和投资人聊过，有一个判断反复出现：AI时代真正拉开差距的，是谁在大量消耗TOKEN。TOKEN消耗量就是杠杆，你消耗得越多，AI替你干的活越多，你的产出就成倍放大。还在手动敲键盘的人，等于没有杠杆。

这个判断指向一个真实的问题：AI不是一个你"学会了"就能用好的工具，它是一种需要重新理解的生产力形态。大多数人还停留在"我来指挥AI干活"的思维里，觉得自己是老板、AI是下属。但AI的能力在很多领域已经超过了人类。你用铲子的姿势去操作挖掘机，当然只能发挥出铲子的效果。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

我观察到的一个有趣现象是：AI用得最好的人，往往是最愿意放权的人，技术反而其次。有一位金融出身的创业者，不写一行代码，靠AI Agent军团冲进了OpenClaw全球贡献者前30，排在他前后的全是十年以上经验的硅谷工程师。他的方法论可以概括成三个原则：以最终结果为导向、过程中不干预、风险可控范围内给最高权限。核心逻辑就是——你没有资格去微操一个能力比你强的东西。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这跟大多数企业推"全员AI"的方式形成了巨大反差。企业在教员工怎么写更好的prompt，本质上是在教大家怎么更好地把AI当铲子用。但真正的问题在于整个组织还在用"人指挥AI"的逻辑，没有进化到"AI参与决策"的阶段。

与其微操AI一百次得到70分的结果，不如放手让AI跑十次、抽出一次120分的。这种"抽卡心态"跟传统管理者的控制欲是完全矛盾的——但在AI时代，放手的人反而跑得更快。

___

## 二、全员AI的真正含义：人才转型，不是技术转型

我跟很多企业管理者聊过，发现一个普遍的误区：他们认为AI转型就是技术部门的事。"AI不就是技术吗？交给IT去研究，给我开发一个系统出来。"

这个思路在数字化时代是对的。你要做CRM、做ERP，确实是技术部门的活。但AI不一样。

以前做数字化，是把数据、信息和业务流程线上化。现在AI大模型有真正的智能，有推理能力，能做的是把企业的知识、经验、方法论"Agent化"。以前这些东西在"老专家"的脑子里，人走了就带走了，不属于企业的资产。现在可以把它沉淀成AI的能力，变成可复制的企业资产。

这才是数字化和智能化最大的区别。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

所以AI转型的本质是人才转型。让每个岗位的人都改变工作方式，这件事交给技术部门是做不到的。

我接触过一家做AI产品的公司，他们的做法很极端：全公司所有岗位统一叫builder，不分产品、开发、设计。工程师全部转全栈，前端设计不再由专门的设计师做，而是每个人用Claude Code直接出页面——做得不好就重新做，反正成本趋近于零。财务报销也不用传统流程，非技术人员自己在AI平台上写Python脚本处理多币种发票。一个完全不懂代码的运营人员，自己把代码推到线上，连PR是什么都不知道。

这家公司的创始人跟我说，他们创业一年的方法论已经全部推翻了，必须从零开始重新想每一件事。

这不是一家公司的特例。我做直播访谈过的一位管理数十亿美元的投资人，看了上千个项目，她观察到约20%的创始人在过去一年主动切换了方向。她判断未来五年会有大量世界500强掉出榜单，而且这个过程正在加速——SaaS公司从高点跌去一半市值以上，有些可能还会继续跌。

这些信号都指向同一个结论：AI不是一个你可以"引入"的工具，它是一场需要全员参与的转型。![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

而思维和技能最大的区别是什么？技能围绕具体任务——第一步做什么，第二步做什么。但AI发展太快，今天学的技能明天可能就过时了，而且不是每个任务都会出现在每个人的工作里。学了用不上，是大量企业AI培训的真实困境。

思维改变的是习惯和观念。万事先问AI——这是一个习惯，不是一个技能。养成这个习惯可能需要一两个月甚至更长，但一旦养成，它会内生出大量跟业务深度结合的应用场景，而不是你提前设计好的那几个标准场景。

___

## 三、为什么之前落不了地？

概念没问题，但为什么"全员AI"喊了一年多，真正落地的企业还是极少数？

我自己踩过的坑可以回答这个问题。过去两个月我前前后后装了五个龙虾，接了五种不同的服务商。接Notion的时候在开发者设置里翻了半天，为了发一篇公众号扫了四五个码。中途挂了几个，重配，再挂，再配。

我的体感是：每一层大概会流失掉九成以上的用户。一千个想试试的人，最后能真正把龙虾用进日常工作流的，可能只剩一两个。

具体来说，有三个层面的障碍：

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

第一，现有软件不是为AI时代设计的。

这话听起来像废话，但含义比表面上深很多。拿Slack举例，它的消息格式、频道结构、权限体系、搜索机制，所有这些都是围绕"人阅读、人操作"来设计的。当你把一个AI agent塞进Slack，你会发现大量的摩擦：agent发的消息太长刷屏了人的对话，回复格式跟人的聊天风格不匹配，agent需要展示一个多步计算过程但消息格式撑不住信息量。Notion也一样——API限速很紧、授权流程藏在深处、数据结构对AI不友好。

我跟好几个创业者聊到这个话题，他们的共识是：在现有IM上面做AI，上限很低。能用，但做到某个点就会碰壁。这些问题不是靠"优化"能解决的，因为底层架构就不是为这个场景设计的。

第二，接入链路太长，每一步都在劝退人。

接入Telegram需要配置bot API。接入Notion需要去后台开授权，功能藏在设置的深处。接入微信公众号更折腾——扫码登录后台、跳转开发者平台、再扫码，前后扫了四五个码才打通。每一个平台的接入都是一套独立的认证体系，没有统一标准，没有"一键授权"。

对技术能力强的人来说这些都是小事。但"全员AI"的"全员"包括卡车司机、销售、财务、设计师——如果接入过程需要懂命令行、懂API、懂授权机制，那"全员"就是一句空话。

第三，安全顾虑一票否决。

我做了几场直播后发现，所有想真正拿龙虾解决工作需求的人，第一个问的都是：安不安全？会不会泄露资料？这个需求比我预期的要强烈得多。一旦涉及到接入企业邮件、客户数据、内部文档，安全性就从"可选项"变成了"一票否决项"。

数据很说明问题：ClawHub上约15%的社区skills含恶意指令，"ClawHavoc"事件中一次性发现了341个植入木马的恶意skills，另有280多个skills存在密钥和个人信息泄露问题。全网有超过13.5万个龙虾实例直接暴露在公网上。![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这些问题叠加在一起，就是为什么"全员AI"一直停留在口号层面：概念是对的，但从概念到落地之间隔着一条很深的沟。

___

## 四、龙虾team功能改变了什么

龙虾team功能为什么能成为"全员AI"的落地突破口？因为它同时解决了上面三个问题中最关键的那个：让AI进入人已经在用的工具。

在龙虾之前，使用AI的方式基本上是"你去找AI"，打开一个网站或APP，输入prompt，等回答。龙虾把这件事反过来了——你在自己日常使用的通讯软件里，飞书、Telegram、Discord，直接给它发消息，它就去干活了。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这个变化看起来简单，实际上是UI层的范式转换。网站你得想起来打开，通讯软件你一直开着。心理门槛完全不同。一个需要单独打开的App你一天可能用三五次，一个在你聊天列表里的对话窗口你一天可能点进去二三十次。交互频率上去了，agent对你的了解就上去了，它能做的事也就多了。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

但更重要的变化发生在团队层面。

我观察到的那些跑通了team agent的团队，做到了三个"接入"：团队聊天接入（agent直接参与日常沟通）、知识库和数据层接入（会议记录、数据库、订单流全部喂给agent）、外部工具接入（自媒体账号、邮件、CRM权限全部打通）。

三层都接上了，agent就会爆发出惊人的力量。少接任何一层，出来的都是残次品。![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

为什么团队场景下agent的表现会远超个人场景？核心原因是数据密度和目标明确性。业务场景的目标极其明确：赚钱、优化某个指标、联系某些人、完成某个流程。业务逻辑是清晰的、可量化的、有明确反馈的。个人场景下你跟agent聊两句让它帮你写个邮件，它当然表现平平——你给AI的数据太少了。

在团队场景下这一点体现得尤为明显——你不是在"使用"一个工具，你是在跟一个理解了你全部业务数据的超级员工协作。很多人跟AI的关系还停留在"我下命令、你执行"，但真正用好team agent的团队，心态更接近于"我提供方向和数据，AI提供分析和方案"。放下控制欲，才能进入一个新的协作模式。

___

## 五、从"一个人用AI"到"一群人跟AI协作"：问题升级了

个人场景下，你跟agent的关系是一对一——你是唯一的"老板"，所有agent听你一个人的。记忆围绕你个人，权限也简单，因为数据都是你自己的。

团队场景下，这些假设全部不成立。

第一，多个人在跟多个agent交互。你告诉agent的信息，你同事可能也需要知道。但不是所有信息你都想让同事看到。所以agent的记忆不能是一个大筐，它需要分层：哪些是个人的，哪些是团队共享的，哪些是部门级的，哪些是全公司的。

第二，agent需要理解"组织"。个人场景下agent只需要理解你一个人的目标和偏好。团队场景下它需要理解公司的目标、现在处于什么阶段、各部门在干什么、谁负责什么。这些信息不是你手动告诉它的，是它需要从公司的各种系统里自己去理解的。

第三，身份和权限。个人用龙虾，你就是你自己，没有身份问题。团队用龙虾，agent需要有一个"身份"——它是谁？它有权访问什么？它代表谁在行动？

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这三个变化叠加在一起，就是team场景跟个人场景的根本差异。但这也恰恰是"全员AI"从口号变为现实的关键——只有解决了组织级记忆、全局理解能力和稳定身份这三个问题，AI才能真正成为团队的一部分，而不只是每个人桌上的一个工具。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

我在直播中跟一位做过多个十亿级用户产品的技术创业者聊到这个话题，他提了一个很有意思的对比：人有泛化能力但执行不精确，程序精确但不能泛化，大模型兼具两者。这个框架帮我理解了为什么team agent的效果会这么好。

用这个框架来看团队场景：以前一个任务需要人来理解需求（泛化能力）+ 系统来执行流程（精确执行），中间需要大量的沟通、翻译、对齐。现在agent同时具备泛化理解和精确执行的能力，中间那层"人与系统之间的翻译层"可以被大幅压缩甚至消除。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这就是为什么接入了完整数据的team agent能做出人类几个月都没搭出来的东西。AI能同时处理散落在各个系统里的信息，人做这件事需要先花大量时间"理解全局"，这个差距在团队场景下被急剧放大。

___

## 六、国内的无奈现实：飞书可能是唯一解

在我的龙虾V3文章里，我详细分析了四种技术方案：Slack+Notion、Telegram+外部数据源、自建IM、以及飞书。

理想状态下，我们应该等一个原生为AI时代设计的新产品出现——从底层架构就为agent交互、多agent协同、组织级记忆而设计的通讯工具。这种产品的天花板是最高的，体验也会是最好的。

但这个产品现在还不存在。

在它出现之前，我们只能在现有的工具里找最优解。而在国内，排除法做完以后，答案很无奈——飞书可能是唯一的选择。![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

为什么说无奈？因为其他选项都走不通，飞书是剩下的那个。

微信和企业微信，腾讯不开放。微信的封闭性决定了它不可能成为agent的载体，你可以在微信里聊龙虾，但你没法把龙虾接入微信。而且微信和腾讯文档、腾讯表格之间是割裂的——不同的产品团队在做，数据和权限不互通。agent需要跨系统工作的时候，这个割裂是致命的。

钉钉，用的人不少，但在数据库和开放生态上不如飞书。钉钉的多维表格功能上线较晚，成熟度有差距。而且龙虾的team场景目前主要是科技公司和创业团队在推，这恰好是飞书的主场，不是钉钉的。

所以消去法做完，飞书成了当前唯一把通讯、文档、数据库、权限做在一个平台里的产品。这恰好满足了team agent的三个核心需求：一体化信息环境、原生结构化数据库、统一权限体系。这些能力并非刻意为AI设计，是飞书过去几年无心插柳积累出来的。

具体来说，agent在飞书群聊里收到一个任务，直接去知识库查文档、在多维表格查数据、看日历判断时间冲突、发消息给相关的人确认——整个过程不需要跨平台，不需要多套API，不需要处理不同系统之间的权限和数据同步问题。

对比海外的方案：Slack做通讯，Notion做文档，Airtable做数据库，Google Calendar做日历——四个独立系统。agent要跨四个系统工作，每个系统权限体系不一样，数据不互通。飞书天然帮你省掉了这个整合的工程量。

但飞书的问题也很明显：机器人接入体验目前很糟糕，创建应用、配置权限、获取凭证、处理事件回调，每一步都有门槛。我自己就是因为想想那个流程就头疼，一直没接飞书。如果飞书能出一个一键把龙虾接入飞书的方案，它在龙虾生态里的地位会立刻上一个台阶。

所以结论是：等原生AI通讯产品出现是最好的，但在那之前，飞书是国内不得不接受的现实选择。

___

## 七、全员AI的新路径：不是人学AI，是AI进入每个人的聊天窗口

说完了问题和平台，接下来聊聊怎么做。我认为"全员AI"的落地路径需要彻底重新设计。

传统路径：培训→打卡→工作坊→养成习惯。这个路径的问题在于它依赖人的主动性。你得让员工主动打开一个AI工具，主动想到"这件事可以用AI来做"，主动写一个prompt。对于积极的人来说没问题，但大多数人不会主动改变习惯。

新路径应该是：把agent接入团队的通讯工具（飞书/Slack），接入知识库和业务数据，配好权限，然后每个员工在自己的聊天窗口里就能跟agent交互。![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

具体来说，分三步：

**第一步：让agent"住进"团队的聊天软件**

agent不应该是一个需要单独打开的App。它应该在你的飞书群聊列表里，跟你的同事并列。你想跟它说话，点一下就行，跟给同事发消息没区别。

更重要的是，agent应该主动汇报，而不是等你去问。理想状态是每天早上你打开飞书，每个agent已经给你发了一条消息：邮件agent告诉你昨晚有3封需要回复的邮件，其中1封是客户催款，已经起草了回复；开发agent告诉你CI昨晚跑失败了，已经查了日志提了PR；内容agent告诉你今天有两个选题跟你的领域相关，准备了草稿大纲。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

你不需要挨个点进去问"有什么新情况"。你扫一遍，该确认的确认，该忽略的忽略，5分钟搞定。这比你打开一个App、输入指令、等回复的效率高一个量级。

**第二步：喂数据，而不是教prompt**

大多数企业推全员AI的方式是教员工写prompt。但对于team场景来说，prompt不是关键，数据才是。

一个没有接入任何业务数据的agent，不管你prompt写得多好，它也只能做一些通用的事情——跟ChatGPT没有本质区别。但一个接入了会议记录、客户数据、业务流程的agent，你只需要说一句"帮我看看上周的客户反馈有没有什么趋势"，它就能给你一份有深度的分析。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

所以"全员AI"的第二步是把企业的数据接好，这比培训员工重要得多。这需要管理层的决策和推动，员工自己完成不了。

这也是为什么我说"AI转型是人才转型"但又不等于"全员学AI技术"——管理层要做的是基础设施：选对平台、接好数据、配好权限。员工需要做的只是改变一个习惯：有问题先问agent，别自己闷头想。

**第三步：让积极的人先跑，形成示范效应**

任何组织推行变革，都不可能一步到位。现实是先让积极的人先学、先用。积极的人里面选出掌握能力比较强的，组成"AI先锋队"。让先锋队先跑通几个场景，出一些成果，然后用成果去带动其他人。

大概是20%的积极分子先动起来，带动60%的中间派。还剩20%怎么办？有些人确实拥抱不了AI，这20%可能就是被淘汰的。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

不过这里有一个反直觉的发现：积极拥抱AI的人不一定是你预期中的那群人。我在直播中多次听到一个观察——四五十岁、没有编程基础的中年人，反而是最疯狂的AI用户。有一个做保险的用户，40多岁，月花1000元用AI工具日发6条视频号，单条100万曝光。反而是刚毕业的大学生，成长在传统教育体系里，不会用AI，某种意义上毕业那一刻就已经落后了。

这跟一个更深层的判断有关：历史负担越少，切换成本越低。这跟年龄无关。我见过60岁的大哥一脸兴奋地折腾AI，也见过20岁的年轻人一嘴老气横秋觉得这些都是泡沫。所谓厚积薄发在AI时代可能是反过来的——积累越多的人越难转身，因为他们太相信自己过去积累的方法论了。

___

## 八、不同阶段的团队怎么做

说完路径，说说不同规模的团队具体怎么操作。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

**小团队（2-10人）：Telegram多agent方案**

如果你是一个小团队或者个人创业者，现阶段最灵活的方案是在Telegram里跑多个agent。每个agent负责一个领域——一个管邮件，一个管开发，一个管内容。就像你的聊天列表里有不同的同事，各管一摊事。

我观察到的一个极端案例是有人搭了一个三层Agent公司架构：一个产品经理agent负责决策、一个CTO agent负责执行、一个CMO agent负责市场。主agent用最强模型做决策，子agent用轻量模型做执行。一个人经营一家"硅基公司"。

成本是主要门槛——每个agent每月100到300美元的API费用，开三四个就是小一千美元/月。但对于有明确业务场景的小团队来说，替代人力还是划算的。

关键是要有一个"大总管"agent负责调配。你说一句话，大总管判断这事该分给谁，或者需要哪几个agent协作完成。同时所有agent共享一层底层记忆——你告诉任何一个agent的信息，其他agent都能访问到。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

**中型团队（10-50人）：飞书接入路线**

这是当前最现实的团队级方案。原因前面分析过了：飞书的一体化架构天然适合team agent。![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

具体操作建议是：先选一个业务场景（比如内容运营、客户管理、项目管理），把这个场景相关的飞书文档、多维表格、群聊全部接入agent，跑通一个最小闭环。不要一上来就想着"全公司接入"，那个链路太长。

有一个思路我觉得很值得借鉴：把公司的价值观直接写成agent的system prompt。招一个agent和招一个人一样，先定价值观，再定能力。这样agent的行为模式跟公司文化是一致的，团队成员跟agent交互的时候不会觉得这个AI在胡说八道。

**大企业：需要从战略层面先想清楚**

大企业不能一上来就全员推。建议分两步走：第一步先做全员的AI认知教育，让大家知道AI是怎么回事，不是让大家学技术。第二步只针对高管做AI战略工作坊，让高管层亲自深度使用AI一天，让他们自己感受到"原来AI的能力这么强大"，同时把战略方向共识出来。

有了战略牵引，再推全员AI，方向一致，力出一孔。如果没有高管层的认知对齐，下面推什么都是散装的。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

大企业还有一个特殊需求是安全合规。个人用户可以接受agent偶尔犯错，企业不行。权限管理、审计日志、数据隔离——这些都是企业级应用的必备条件。这也是为什么我判断企业市场要等到合规层成熟以后才会真正打开。

___

## 九、一个更激进的判断：产品已经是一种内容

到这里，我想跳出"全员AI"这个框架，说一个更大的判断。

龙虾team功能爆发的背后，不只是"企业怎么用AI"的问题，还有一个更深层的范式转变：当开发成本趋近于零，"做产品"和"发短视频"没有本质区别了。

以前做一个产品需要一个团队、几个月的开发周期、几十万到几百万的投入。现在一个人用AI几个小时就能做出来。我见过一个年轻创业者，在转机的十几个小时空闲中用手机做了一个插件，上线后几小时内下载量就破了几千，最终突破了数万。

这意味着什么？意味着每个人的独特经历、独特需求都可以变成产品。你不需要是一个工程师，你只需要有一个具体的需求——哪怕这个需求再小众、再私人，它都可以被做成一个产品。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

对企业来说，这个判断的含义是：你不需要等IT部门给你开发一个"AI系统"。每个部门、每个岗位的人，都可以用agent来做自己的"产品"——一个自动化的客户跟进流程是产品，一个自动生成周报的工作流是产品，一个根据业务数据自动调整定价的决策系统也是产品。

这才是"全员AI"最激进的含义：不是全员学AI，是全员用AI造自己需要的东西。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

还有一个更远的设想值得关注：未来每个人可能都会派自己的AI分身进入一个由AI组成的网络。你的AI分身同时跟成千上万个其他AI交互、比较、筛选，最后把最好的结果带回来给你。一个人的AI分身可以同时出现在一万个场景里，这是人类物理上做不到的事。

这听起来很科幻，但回头看人类互联网的发展史——从论坛到电商、社交、O2O、短视频，每一步都是交互方式的升级。AI互联网大概率也会走同样的路径。而"全员AI"就是这条路径上的第一步：让每个人都有自己的AI分身，参与到这个网络里。

___

## 十、泼盆冷水：现阶段的现实

方向说完了，说说现实。

现阶段能真正跑通team agent的，还是极少数。我观察到的那些成功案例，团队本身就是做agent的，或者有丰富的多平台踩坑经验，各种API接过、权限配过、坑都踩过一遍。对他们来说接入整个流程是丝滑的。但普通团队不具备这个条件。

现在这些平台的坑特别多。很多人在某一步就断了——可能是飞书的机器人权限配不明白，可能是Notion的API授权找不到入口，可能是接入的模型不够好导致输出质量上不去，可能是跨平台数据同步出了问题。断了以后就放弃了，永远体验不到team agent真正的威力。

还有一个残酷的现实：这一波AI创业者几乎都是有积累的人，不是从零开始的。能用agent跑房地产CRM的人本来就懂房地产流程，能提出垂直SaaS框架的人之前就做过好几个SaaS产品。我目前没看到这一波里有从0到1特别牛的新人。都是之前有行业认知、有资源积累的人在吃这波红利。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

所以如果你是一个普通的企业管理者，想推"全员AI"，我的建议是：

1、不要等——等门槛降低可能要半年到一年，但你的竞争对手可能不会等。先从一个最小的场景开始试。

2、不要从技术入手——先想清楚你最想让AI解决什么业务问题，然后找人帮你接入。自己折腾API的时间成本太高了。

3、不要指望一步到位——先让团队里最积极的几个人跑通一个场景，出了成果再推广。

4、认真评估安全风险——尤其是涉及客户数据和内部文档的场景。现阶段agent的安全性还不够企业级。

___

## 写在最后

两个月前龙虾刚火的时候，讨论还停留在"怎么装""用什么skill"。现在已经快速转向了"怎么在团队里用""怎么让多个agent协同工作"。

这个转变比我预期的要快。

我做了十几场直播，跟七八位AI行业的创业者和投资人深聊过。有一个判断反复出现：2026年TOKEN消耗将增长100倍，AI agent将从个人工具进化为组织基础设施。全球TOKEN的天花板就是芯片的产能——不是你想不想用AI的问题，是算力够不够用的问题。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

在这个大趋势下，"全员AI"不再是一个可选项，而是一个必选项。问题只是你什么时候开始，以什么方式开始。

我的建议很简单：不要再花时间组织全员学prompt了。把那个预算用来接一个team agent，让它接入你的飞书、接入你的业务数据、接入你的客户系统。然后让每个员工在自己的聊天窗口里跟它说话。

全员AI，不是让所有人都变成AI专家。是让AI变成所有人的同事。

这件事，现在就可以开始。

![Image](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

## 九条Takeaway

1、"全员AI"≠全员学AI。大多数企业还在教员工写prompt，这是把AI当铲子用。真正的全员AI是让AI进入每个人的工作流。

2、AI转型的本质是人才转型，不是技术转型。不要把AI当成IT部门的任务，它改变的是每个岗位的人怎么工作。

3、团队场景下agent的表现远超个人场景，核心原因是业务数据密度和目标明确性。你给AI的数据越多、目标越清晰，它的产出越惊人。

4、龙虾team功能是"全员AI"落地的关键转折点：AI从"你去打开一个网页"变成"在你聊天窗口里的同事"。

5、落地的三步：让agent住进聊天软件、喂数据而不是教prompt、让积极的人先跑形成示范效应。

6、等原生AI通讯产品是最优解，但在它出现之前，国内消去法做完，飞书是唯一把通讯+文档+数据库+权限做在一起的平台。腾讯不开放，钉钉生态不够，飞书是无奈但现实的选择。

7、现阶段能真正跑通的还是极少数技术能力强的团队。普通企业先从一个最小场景开始试，不要等、不要从技术入手、不要指望一步到位。

8、安全是企业级应用的一票否决项。现阶段agent的安全性还不够，这是企业市场打开的前提条件。

9、2026年TOKEN消耗将增长100倍。全员AI不是可选项，是必选项。问题不是要不要做，是什么时候开始。