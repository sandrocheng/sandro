.class public Lcom/keniu/security/sync/ui/AccountMgrAct;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "AccountMgrAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/keniu/security/sync/k;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    .line 28
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/AccountMgrAct;)Lcom/keniu/security/sync/k;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0861

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/keniu/security/sync/ui/AccountMgrAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/AccountMgrAct;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const v2, 0x7f0b0862

    .line 99
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->b()V

    .line 102
    invoke-static {p0, v2}, Lcom/keniu/security/sync/l;->b(Landroid/content/Context;I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->b()V

    .line 108
    const/4 v0, 0x1

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/sync/ui/LoginAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v1, "http://i.ijinshan.com/jump.php?act=modify&source=mosecurity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/sync/ui/WebViewAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :pswitch_4
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b0867

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/ui/AccountMgrAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b0218

    new-instance v2, Lcom/keniu/security/sync/ui/b;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/b;-><init>(Lcom/keniu/security/sync/ui/AccountMgrAct;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f0b021a

    new-instance v2, Lcom/keniu/security/sync/ui/a;

    invoke-direct {v2, p0}, Lcom/keniu/security/sync/ui/a;-><init>(Lcom/keniu/security/sync/ui/AccountMgrAct;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x7f080237
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    const-string v0, ">>>> on create"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const v0, 0x7f030083

    const v1, 0x7f0b083f

    invoke-super {p0, p1, v0, v1}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 36
    const v0, 0x7f080237

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->a:Landroid/widget/RelativeLayout;

    .line 37
    const v0, 0x7f080238

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->b:Landroid/widget/RelativeLayout;

    .line 38
    const v0, 0x7f080239

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->d:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->c:Lcom/keniu/security/sync/k;

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/keniu/security/sync/ui/AccountMgrAct;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f08023a

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f08023b

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->b()V

    .line 53
    invoke-super {p0}, Lcom/keniu/security/main/BaseTitleActivity;->onResume()V

    .line 54
    return-void
.end method
