.class final Lpk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lpj;


# direct methods
.method constructor <init>(Lpj;)V
    .locals 0

    iput-object p1, p0, Lpk;->a:Lpj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpk;->a:Lpj;

    iget-object v0, v0, Lpj;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    iget-object v1, p0, Lpk;->a:Lpj;

    iget-object v1, v1, Lpj;->a:Lph;

    iget-object v1, v1, Lph;->a:Lpe;

    iget-object v1, v1, Lpe;->d:Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v2, p0, Lpk;->a:Lpj;

    iget-object v2, v2, Lpj;->a:Lph;

    iget-object v2, v2, Lph;->a:Lpe;

    iget-object v2, v2, Lpe;->h:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    invoke-virtual {v0, v1, v2}, Lpe;->a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    return-void
.end method
