.class Lcom/avg/tuneup/traffic/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/Spinner;

.field final synthetic c:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/m;->c:Lcom/avg/tuneup/traffic/a;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/m;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/avg/tuneup/traffic/m;->b:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/m;->c:Lcom/avg/tuneup/traffic/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/a;->d(Lcom/avg/tuneup/traffic/a;I)I

    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/m;->c:Lcom/avg/tuneup/traffic/a;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/m;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/a;->d(Lcom/avg/tuneup/traffic/a;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/m;->c:Lcom/avg/tuneup/traffic/a;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/m;->b:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/a;->e(Lcom/avg/tuneup/traffic/a;I)I

    iget-object v0, p0, Lcom/avg/tuneup/traffic/m;->c:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;)Lcom/avg/tuneup/traffic/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/o;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
