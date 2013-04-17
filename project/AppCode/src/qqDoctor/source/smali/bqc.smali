.class final Lbqc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqc;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbqc;->a:Lbqb;

    invoke-static {v0}, Lbqb;->a(Lbqb;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbqc;->a:Lbqb;

    invoke-virtual {v1}, Lbqb;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    new-instance v2, Lbqd;

    invoke-direct {v2, p0, v0}, Lbqd;-><init>(Lbqc;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
