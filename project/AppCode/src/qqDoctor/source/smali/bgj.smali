.class public final Lbgj;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lbgj;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    iput-object p1, p0, Lbgj;->d:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lbgj;->b:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-boolean v0, Lbgj;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-boolean v0, Lbgj;->a:Z

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    :cond_0
    return-void
.end method

.method public final a(FFF)V
    .locals 1

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(FF)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cd()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lbgj;->a:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    iget-object v1, p0, Lbgj;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    :cond_0
    iget-object v0, p0, Lbgj;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lbgj;->c:Lcom/tencent/qqpimsecure/view/privacy/CameraSwitchWindowView;

    sget-object v2, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lbgj;->a:Z

    :cond_1
    return-void
.end method
