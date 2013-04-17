.class final Layt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Layr;


# direct methods
.method constructor <init>(Layr;)V
    .locals 0

    iput-object p1, p0, Layt;->a:Layr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    new-instance v1, Layu;

    invoke-direct {v1, p0}, Layu;-><init>(Layt;)V

    invoke-static {v0, v1}, Layp;->a(Layp;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V

    return-void
.end method
