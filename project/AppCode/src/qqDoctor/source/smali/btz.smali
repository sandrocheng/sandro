.class final Lbtz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbtx;

.field private final synthetic b:Landroid/content/Intent;

.field private final synthetic c:Lbtx$a;


# direct methods
.method constructor <init>(Lbtx;Landroid/content/Intent;Lbtx$a;)V
    .locals 0

    iput-object p1, p0, Lbtz;->a:Lbtx;

    iput-object p2, p0, Lbtz;->b:Landroid/content/Intent;

    iput-object p3, p0, Lbtz;->c:Lbtx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbtz;->a:Lbtx;

    invoke-static {v0}, Lbtx;->b(Lbtx;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbtz;->b:Landroid/content/Intent;

    iget-object v2, p0, Lbtz;->c:Lbtx$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
