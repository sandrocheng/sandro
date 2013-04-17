.class public final Lvc;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z


# instance fields
.field private f:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

.field private g:Landroid/view/WindowManager;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "location_shower_add"

    sput-object v0, Lvc;->a:Ljava/lang/String;

    const-string v0, "location_shower_delete"

    sput-object v0, Lvc;->b:Ljava/lang/String;

    const-string v0, "loaction"

    sput-object v0, Lvc;->c:Ljava/lang/String;

    const-string v0, "is_ip"

    sput-object v0, Lvc;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lvc;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvc;->f:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    iput-object p1, p0, Lvc;->h:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lvc;->g:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lvc;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvc;->f:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->removeAllMessages()V

    iget-object v0, p0, Lvc;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lvc;->f:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sput-boolean v2, Lvc;->e:Z

    sput v2, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->isinorout:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    sget-boolean v0, Lvc;->e:Z

    if-nez v0, :cond_1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->Z()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    iget-object v1, p0, Lvc;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lvc;->f:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    iget-object v0, p0, Lvc;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lvc;->f:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    sget-object v2, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lkg;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    sput-boolean v0, Lvc;->e:Z

    :cond_1
    return-void
.end method
