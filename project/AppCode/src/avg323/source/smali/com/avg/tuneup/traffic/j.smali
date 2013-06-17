.class Lcom/avg/tuneup/traffic/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/j;->b:Lcom/avg/tuneup/traffic/a;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/j;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/j;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/j;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    return-void
.end method
