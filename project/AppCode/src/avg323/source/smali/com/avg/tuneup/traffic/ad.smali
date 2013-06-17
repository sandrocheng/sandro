.class Lcom/avg/tuneup/traffic/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/avg/tuneup/traffic/y;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/y;Landroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/ad;->b:Lcom/avg/tuneup/traffic/y;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/ad;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ad;->a:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
