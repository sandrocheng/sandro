.class final Lazw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lazv;


# direct methods
.method constructor <init>(Lazv;)V
    .locals 0

    iput-object p1, p0, Lazw;->a:Lazv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lazw;->a:Lazv;

    iget-object v0, v0, Lazv;->a:Lazu;

    invoke-static {v0}, Lazu;->a(Lazu;)Lakb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazw;->a:Lazv;

    iget-object v0, v0, Lazv;->a:Lazu;

    invoke-static {v0}, Lazu;->a(Lazu;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->b()V

    :cond_0
    return-void
.end method
