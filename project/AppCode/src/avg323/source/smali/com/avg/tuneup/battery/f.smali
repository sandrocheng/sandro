.class Lcom/avg/tuneup/battery/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/battery/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/f;->a:Lcom/avg/tuneup/battery/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/battery/f;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0, p2}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;I)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/f;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
