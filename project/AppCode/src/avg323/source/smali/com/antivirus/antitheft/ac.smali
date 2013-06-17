.class Lcom/antivirus/antitheft/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/antitheft/ab;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/ac;->a:Lcom/antivirus/antitheft/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/32 v0, 0x1d4c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/antivirus/antitheft/ac;->a:Lcom/antivirus/antitheft/ab;

    invoke-static {v0}, Lcom/antivirus/antitheft/ab;->a(Lcom/antivirus/antitheft/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/ac;->a:Lcom/antivirus/antitheft/ab;

    invoke-static {v0}, Lcom/antivirus/antitheft/ab;->b(Lcom/antivirus/antitheft/ab;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
