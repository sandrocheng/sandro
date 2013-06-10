.class final Lorg/antivirus/tuneup/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/ba;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/ba;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bc;->a:Lorg/antivirus/tuneup/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lorg/antivirus/AVSettings;->isDataCountRestart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/bc;->a:Lorg/antivirus/tuneup/ba;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->e()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/bc;->a:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/antivirus/tuneup/ba;->a(J)V

    iget-object v0, p0, Lorg/antivirus/tuneup/bc;->a:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->j()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/tuneup/bc;->a:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->g()V

    goto :goto_0
.end method
