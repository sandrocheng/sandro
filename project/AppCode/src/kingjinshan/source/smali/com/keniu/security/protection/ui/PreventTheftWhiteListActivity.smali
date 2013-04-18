.class public Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;
.super Landroid/app/ListActivity;
.source "PreventTheftWhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/keniu/security/protection/ui/an;

.field private b:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 118
    new-instance v0, Lcom/keniu/security/protection/ui/aj;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/aj;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->b:Landroid/database/DataSetObserver;

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)Lcom/keniu/security/protection/ui/an;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const v4, 0x7f080093

    const/4 v3, 0x0

    .line 48
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 49
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 50
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 52
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 53
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0b0769

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {p0, v4}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 63
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 64
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0b078e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0b078f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 316
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 318
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 319
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 320
    const v1, 0x7f0b0218

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/protection/ui/al;

    invoke-direct {v2, p0}, Lcom/keniu/security/protection/ui/al;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 328
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 329
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 273
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 275
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "LongClickMore case 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {v0, p2}, Lcom/keniu/security/protection/ui/an;->a(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "LongClickMore case 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "number"

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {v2, p2}, Lcom/keniu/security/protection/ui/an;->b(I)Lcom/keniu/security/protection/ui/ao;

    move-result-object v2

    iget-object v2, v2, Lcom/keniu/security/protection/ui/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v1, "location"

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {v2, p2}, Lcom/keniu/security/protection/ui/an;->b(I)Lcom/keniu/security/protection/ui/ao;

    move-result-object v2

    iget-object v2, v2, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "modify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "LongClickMore case 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {v0, p2}, Lcom/keniu/security/protection/ui/an;->a(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "LongClickMore case 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "number"

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {v2, p2}, Lcom/keniu/security/protection/ui/an;->b(I)Lcom/keniu/security/protection/ui/ao;

    move-result-object v2

    iget-object v2, v2, Lcom/keniu/security/protection/ui/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "location"

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {v2, p2}, Lcom/keniu/security/protection/ui/an;->b(I)Lcom/keniu/security/protection/ui/ao;

    move-result-object v2

    iget-object v2, v2, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "modify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/protection/ui/ao;

    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .parameter

    .prologue
    .line 292
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/protection/ui/ao;

    .line 295
    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    :cond_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, v0, Lcom/keniu/security/protection/ui/ao;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 303
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_1
    return-void

    .line 307
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 310
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/protection/ui/ag;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 93
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    :cond_0
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    :cond_1
    :goto_0
    move v3, v6

    .line 107
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 108
    new-instance v4, Lcom/keniu/security/protection/ui/ao;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-direct {v4, p0, v5, v6}, Lcom/keniu/security/protection/ui/ao;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_2
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 99
    array-length v3, v2

    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 100
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    move v4, v6

    .line 101
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 102
    aget-object v5, v2, v4

    aput-object v5, v3, v4

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 104
    goto :goto_0

    .line 112
    :cond_4
    new-instance v1, Lcom/keniu/security/protection/ui/an;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/protection/ui/an;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    .line 113
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->b:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/an;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 115
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 226
    const v1, 0x7f080097

    if-ne v0, v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {p0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    :cond_0
    const v0, 0x7f0b0790

    invoke-direct {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a(I)V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 236
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number.indexOf(presentIMSI)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    const v0, 0x7f0b0791

    invoke-direct {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a(I)V

    goto :goto_0

    .line 241
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u542f\u52a8\u6dfb\u52a0\u9875\u9762"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "location"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "save"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f080093

    const/4 v3, 0x0

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PreventTheftWhiteListActivity oncreate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0769

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b078e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0b078f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 38
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 261
    const v2, 0x7f0b025d

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 262
    new-instance v2, Lcom/keniu/security/protection/ui/ak;

    invoke-direct {v2, p0, p3}, Lcom/keniu/security/protection/ui/ak;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;I)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 269
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 270
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PreventTheftWhiteListActivity onstart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/protection/ui/ag;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    new-instance v4, Lcom/keniu/security/protection/ui/ao;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-direct {v4, p0, v5, v6}, Lcom/keniu/security/protection/ui/ao;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    array-length v4, v1

    if-ge v3, v4, :cond_1

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    move v4, v6

    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_3

    aget-object v5, v2, v4

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/keniu/security/protection/ui/an;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/protection/ui/an;-><init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a:Lcom/keniu/security/protection/ui/an;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->b:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/an;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method
