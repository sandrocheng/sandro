.class Lcom/avg/tuneup/storage/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/storage/e;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/storage/e;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/f;->a:Lcom/avg/tuneup/storage/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/storage/f;->a:Lcom/avg/tuneup/storage/e;

    iget-object v0, v0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0}, Lcom/avg/tuneup/storage/b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/storage/f;->a:Lcom/avg/tuneup/storage/e;

    iget-object v0, v0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->i(Lcom/avg/tuneup/storage/b;)Lcom/avg/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/avg/tuneup/storage/f;->a:Lcom/avg/tuneup/storage/e;

    iget-object v0, v0, Lcom/avg/tuneup/storage/e;->a:Lcom/avg/tuneup/storage/d;

    iget-object v0, v0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avg/tuneup/storage/b;->c:Z

    goto :goto_0
.end method
