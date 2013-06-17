.class Lcom/avg/tuneup/traffic/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/h;->c:Lcom/avg/tuneup/traffic/a;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/h;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/avg/tuneup/traffic/h;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/h;->c:Lcom/avg/tuneup/traffic/a;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/h;->a:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/a;->b(Lcom/avg/tuneup/traffic/a;I)I

    iget-object v0, p0, Lcom/avg/tuneup/traffic/h;->c:Lcom/avg/tuneup/traffic/a;

    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;F)F

    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/h;->c:Lcom/avg/tuneup/traffic/a;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/h;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/h;->c:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;)Lcom/avg/tuneup/traffic/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/o;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
