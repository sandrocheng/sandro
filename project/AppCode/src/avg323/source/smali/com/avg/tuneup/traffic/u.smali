.class Lcom/avg/tuneup/traffic/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/s;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/s;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/u;->a:Lcom/avg/tuneup/traffic/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/avg/tuneup/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/u;->a:Lcom/avg/tuneup/traffic/s;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/s;->f()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/u;->a:Lcom/avg/tuneup/traffic/s;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/avg/tuneup/traffic/s;->a(J)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/u;->a:Lcom/avg/tuneup/traffic/s;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/s;->k()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/u;->a:Lcom/avg/tuneup/traffic/s;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/s;->h()V

    goto :goto_0
.end method
