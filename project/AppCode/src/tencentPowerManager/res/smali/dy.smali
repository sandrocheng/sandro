.class final Ldy;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ldx;


# direct methods
.method constructor <init>(Ldx;)V
    .locals 0

    iput-object p1, p0, Ldy;->a:Ldx;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldy;->a:Ldx;

    iget-object v0, v0, Ldx;->a:Lcom/tencent/powermanager/view/DeepSaveView;

    invoke-static {}, Lgl;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/powermanager/view/DeepSaveView;->a(Lcom/tencent/powermanager/view/DeepSaveView;I)I

    iget-object v0, p0, Ldy;->a:Ldx;

    iget-object v0, v0, Ldx;->a:Lcom/tencent/powermanager/view/DeepSaveView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/DeepSaveView;->a(Lcom/tencent/powermanager/view/DeepSaveView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
