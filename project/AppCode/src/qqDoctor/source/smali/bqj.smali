.class final Lbqj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;


# instance fields
.field private synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqj;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(F)V
    .locals 2

    iget-object v0, p0, Lbqj;->a:Lbqb;

    invoke-static {v0, p1}, Lbqb;->a(Lbqb;F)F

    iget-object v0, p0, Lbqj;->a:Lbqb;

    invoke-static {v0}, Lbqb;->c(Lbqb;)Lbqb$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqj;->a:Lbqb;

    invoke-static {v0}, Lbqb;->c(Lbqb;)Lbqb$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbqb$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
