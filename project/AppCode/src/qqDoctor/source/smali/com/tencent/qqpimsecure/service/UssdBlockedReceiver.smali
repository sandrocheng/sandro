.class public Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.tencent.tmsecure.ACTION_USSD_BLOCKED"

    sput-object v0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->d:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->b:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c:Landroid/view/View;

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->d:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c:Landroid/view/View;

    const v1, 0x7f0802f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lach;

    invoke-direct {v1, p0}, Lach;-><init>(Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->c:Landroid/view/View;

    sget-object v2, Lkg;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->d:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
