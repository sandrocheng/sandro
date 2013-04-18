.class public Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;
.super Landroid/app/ListActivity;
.source "UserWhiteBlackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final a:Z = true

.field private static final b:Ljava/lang/String; = "UserWhiteBlackListActivity"

.field private static final c:I = 0x4000

.field private static final d:I = 0x1


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/ijinshan/kinghelper/firewall/ff;

.field private h:Landroid/widget/RadioGroup;

.field private i:Landroid/database/DataSetObserver;

.field private j:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ex;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/ex;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->i:Landroid/database/DataSetObserver;

    .line 449
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/fc;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/fc;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Lcom/ijinshan/kinghelper/firewall/ff;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 126
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->removeDialog(I)V

    .line 127
    iput p1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    .line 128
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    .line 131
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f0b0001

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setTitle(I)V

    .line 134
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    if-ne v0, v2, :cond_1

    const-string v0, "_PickListActivity1_black_action"

    :goto_1
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->f:Ljava/lang/String;

    .line 136
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 141
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(I)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 143
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-direct {v1, p0, p0, v0}, Lcom/ijinshan/kinghelper/firewall/ff;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    .line 145
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->i:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/ff;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 148
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    if-ne v0, v2, :cond_2

    .line 152
    const-string v0, "sao_blist"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    :goto_2
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    if-ne v2, v1, :cond_3

    const v1, 0x7f0b0002

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 169
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    if-ne v2, v1, :cond_4

    const v1, 0x7f020068

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    if-ne v2, v1, :cond_5

    const v1, 0x7f0b00b9

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    return-void

    .line 131
    :cond_0
    const v0, 0x7f0b0006

    goto/16 :goto_0

    .line 134
    :cond_1
    const-string v0, "PickListActivity1_white_action"

    goto/16 :goto_1

    .line 157
    :cond_2
    const-string v0, "sao_wlist"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_3
    const v1, 0x7f0b0007

    goto :goto_3

    .line 169
    :cond_4
    const v1, 0x7f020069

    goto :goto_4

    .line 174
    :cond_5
    const v1, 0x7f0b00ba

    goto :goto_5
.end method

.method private a(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const v9, 0x7f0b00c0

    const/high16 v3, 0x1000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 509
    packed-switch p1, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 511
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 512
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 515
    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 516
    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 518
    iget v3, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v3, v5, :cond_1

    .line 519
    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0197

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 523
    :cond_1
    iget v3, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 524
    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 527
    :cond_2
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 528
    const v2, 0x7f0b00d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 529
    const v2, 0x7f0b00d5

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/fd;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/kinghelper/firewall/fd;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;Lcom/ijinshan/kinghelper/firewall/a/g;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 538
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    .line 542
    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 543
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 545
    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v1, v8, :cond_3

    .line 546
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 547
    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 548
    const-string v2, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 549
    const-string v0, "rule_type"

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 552
    :cond_3
    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 553
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 554
    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 555
    const-string v2, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 556
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 558
    :cond_4
    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v1, v5, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 560
    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 561
    const-string v2, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 562
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 567
    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 568
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 569
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 572
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 574
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 576
    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 584
    :pswitch_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 585
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 586
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 587
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 3
    .parameter

    .prologue
    .line 231
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 232
    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 234
    :pswitch_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 235
    const-class v1, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    const-string v1, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 237
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 245
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(J)I

    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 248
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x7f080421
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;II)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const v9, 0x7f0b00c0

    const/high16 v3, 0x1000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 58
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v3, v5, :cond_1

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0197

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget v3, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9, v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b00d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b00d5

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/fd;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/kinghelper/firewall/fd;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;Lcom/ijinshan/kinghelper/firewall/a/g;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v1, v8, :cond_3

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "rule_type"

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    iget v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p2}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    return v0
.end method

.method private b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 194
    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 195
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 196
    const v1, 0x7f070039

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 202
    :goto_0
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    const v1, 0x7f07003a

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    const-string v0, "UserWhiteBlackListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ff;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 393
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 395
    const-string v0, "UserWhiteBlackListActivity"

    const-string v1, "reflash list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 378
    const v1, 0x7f080097

    if-ne v0, v1, :cond_0

    .line 380
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->showDialog(I)V

    .line 382
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 100
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setContentView(I)V

    .line 101
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->h:Landroid/widget/RadioGroup;

    .line 102
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->h:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ey;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ey;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 117
    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(I)V

    .line 122
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 186
    const/16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 187
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b013f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f070039

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    :goto_0
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 189
    :goto_1
    return-object v0

    .line 187
    :cond_0
    const v1, 0x7f07003a

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    goto :goto_0

    .line 189
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->i:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/ff;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 264
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ff;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 268
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v3, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 410
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 411
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;->a(Landroid/database/Cursor;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 413
    const v4, 0x7f0b025d

    invoke-virtual {v3, v4}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 414
    iget v4, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->e:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 415
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 416
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/ez;

    invoke-direct {v0, p0, p3}, Lcom/ijinshan/kinghelper/firewall/ez;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V

    invoke-virtual {v3, v1, v0}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 425
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 447
    :goto_0
    return-void

    .line 427
    :cond_0
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/fa;

    invoke-direct {v0, p0, p3}, Lcom/ijinshan/kinghelper/firewall/fa;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V

    invoke-virtual {v3, v2, v0}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 434
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0

    .line 437
    :cond_1
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/fb;

    invoke-direct {v0, p0, p3}, Lcom/ijinshan/kinghelper/firewall/fb;-><init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;I)V

    invoke-virtual {v3, v1, v0}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 444
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->finish()V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 223
    :pswitch_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "UserWhiteBlackAddActivity_rule"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/ff;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(J)I

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->g:Lcom/ijinshan/kinghelper/firewall/ff;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080421
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 259
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 219
    return-void
.end method
