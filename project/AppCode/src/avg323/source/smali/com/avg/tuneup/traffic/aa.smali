.class Lcom/avg/tuneup/traffic/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/y;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/y;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/aa;->a:Lcom/avg/tuneup/traffic/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/aa;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0, p1, p2}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;Landroid/widget/CompoundButton;Z)V

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
