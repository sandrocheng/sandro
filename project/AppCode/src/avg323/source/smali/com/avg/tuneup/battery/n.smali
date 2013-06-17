.class Lcom/avg/tuneup/battery/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/battery/l;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/l;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/n;->a:Lcom/avg/tuneup/battery/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/n;->a:Lcom/avg/tuneup/battery/l;

    iget-object v0, v0, Lcom/avg/tuneup/battery/l;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0, p2}, Lcom/avg/tuneup/battery/c;->e(Lcom/avg/tuneup/battery/c;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
