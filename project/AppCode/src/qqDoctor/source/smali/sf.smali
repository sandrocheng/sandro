.class final Lsf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lse;


# direct methods
.method constructor <init>(Lse;)V
    .locals 0

    iput-object p1, p0, Lsf;->a:Lse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lsf;->a:Lse;

    invoke-static {v2}, Lse;->a(Lse;)Landroid/content/Context;

    invoke-static {}, La;->a()V

    invoke-static {}, Lse;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileSafeRecoveryInit time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
