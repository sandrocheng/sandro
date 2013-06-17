.class Lcom/avg/tuneup/traffic/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/c;->a:Lcom/avg/tuneup/traffic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/c;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0, p2}, Lcom/avg/tuneup/traffic/a;->f(Lcom/avg/tuneup/traffic/a;I)I

    iget-object v0, p0, Lcom/avg/tuneup/traffic/c;->a:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;)Lcom/avg/tuneup/traffic/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/o;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
