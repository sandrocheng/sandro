.class final Lbyr$c;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private a:Lbyr$d;

.field private synthetic b:Lbyr;


# direct methods
.method private constructor <init>(Lbyr;)V
    .locals 0

    iput-object p1, p0, Lbyr$c;->b:Lbyr;

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbyr;B)V
    .locals 0

    invoke-direct {p0, p1}, Lbyr$c;-><init>(Lbyr;)V

    return-void
.end method


# virtual methods
.method public final onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    new-instance v0, Lbyr$d;

    iget-object v1, p0, Lbyr$c;->b:Lbyr;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbyr$d;-><init>(Lbyr;B)V

    iput-object v0, p0, Lbyr$c;->a:Lbyr$d;

    iget-object v0, p0, Lbyr$c;->a:Lbyr$d;

    invoke-virtual {v0}, Lbyr$d;->a()V

    return-void
.end method

.method public final onDestory()V
    .locals 1

    iget-object v0, p0, Lbyr$c;->a:Lbyr$d;

    invoke-virtual {v0}, Lbyr$d;->b()V

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    return-void
.end method
