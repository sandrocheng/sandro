.class final Lorg/antivirus/wipe/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lorg/antivirus/wipe/WipeSd;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeSd;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    iput-object p2, p0, Lorg/antivirus/wipe/ae;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lorg/antivirus/wipe/ai;

    iget-object v1, p0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    invoke-direct {v0, v1}, Lorg/antivirus/wipe/ai;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/antivirus/wipe/ai;->c()Z

    move-result v0

    iget-object v1, p0, Lorg/antivirus/wipe/ae;->b:Lorg/antivirus/wipe/WipeSd;

    new-instance v2, Lorg/antivirus/wipe/af;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/wipe/af;-><init>(Lorg/antivirus/wipe/ae;Z)V

    invoke-virtual {v1, v2}, Lorg/antivirus/wipe/WipeSd;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
