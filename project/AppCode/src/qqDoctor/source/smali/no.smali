.class public final Lno;
.super Lnq;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnq;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lno;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()I
    .locals 1

    const v0, 0x7f0b025e

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
