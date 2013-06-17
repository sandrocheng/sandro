.class Lcom/avg/tuneup/traffic/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/q;

.field final synthetic b:I

.field final synthetic c:Lcom/avg/tuneup/traffic/o;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/o;Lcom/avg/tuneup/traffic/q;I)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/p;->c:Lcom/avg/tuneup/traffic/o;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/p;->a:Lcom/avg/tuneup/traffic/q;

    iput p3, p0, Lcom/avg/tuneup/traffic/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/p;->a:Lcom/avg/tuneup/traffic/q;

    iget-object v1, v0, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/p;->a:Lcom/avg/tuneup/traffic/q;

    iget-object v0, v0, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/p;->c:Lcom/avg/tuneup/traffic/o;

    iget v1, p0, Lcom/avg/tuneup/traffic/p;->b:I

    iget-object v2, p0, Lcom/avg/tuneup/traffic/p;->a:Lcom/avg/tuneup/traffic/q;

    iget-object v2, v2, Lcom/avg/tuneup/traffic/q;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/avg/tuneup/traffic/o;->a(Lcom/avg/tuneup/traffic/o;IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
