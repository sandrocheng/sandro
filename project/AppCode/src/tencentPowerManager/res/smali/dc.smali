.class public final Ldc;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)V
    .locals 0

    iput-object p1, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    iget-object v1, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->b(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->a(Lcom/tencent/powermanager/uilib/button/SleekButtonView;I)I

    iget-object v0, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->c(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I

    iget-object v0, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->b(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I

    move-result v0

    iget-object v1, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->d(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->e(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)I

    :cond_1
    iget-object v0, p0, Ldc;->a:Lcom/tencent/powermanager/uilib/button/SleekButtonView;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/button/SleekButtonView;->f(Lcom/tencent/powermanager/uilib/button/SleekButtonView;)V

    goto :goto_0
.end method
