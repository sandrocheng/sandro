.class Lcom/avg/tuneup/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/a/f;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/a/g;->a:Lcom/avg/tuneup/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/a/g;->a:Lcom/avg/tuneup/a/f;

    iget-object v0, v0, Lcom/avg/tuneup/a/f;->a:Lcom/avg/tuneup/a/c;

    invoke-static {v0}, Lcom/avg/tuneup/a/c;->f(Lcom/avg/tuneup/a/c;)Lcom/avg/tuneup/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/a/i;->notifyDataSetChanged()V

    return-void
.end method
