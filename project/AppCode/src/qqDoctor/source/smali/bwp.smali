.class final Lbwp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# instance fields
.field private synthetic a:Lbwo;


# direct methods
.method constructor <init>(Lbwo;)V
    .locals 0

    iput-object p1, p0, Lbwp;->a:Lbwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 1

    iget-object v0, p0, Lbwp;->a:Lbwo;

    invoke-static {v0}, Lbwo;->a(Lbwo;)I

    return-void
.end method
