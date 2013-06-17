.class Lcom/avg/tuneup/traffic/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/ah;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/ai;->a:Lcom/avg/tuneup/traffic/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ai;->a:Lcom/avg/tuneup/traffic/ah;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->b(Lcom/avg/tuneup/traffic/y;)Lcom/avg/tuneup/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ai;->a:Lcom/avg/tuneup/traffic/ah;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/ah;->b:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->b(Lcom/avg/tuneup/traffic/y;)Lcom/avg/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
