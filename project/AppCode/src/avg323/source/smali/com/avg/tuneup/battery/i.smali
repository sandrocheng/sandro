.class Lcom/avg/tuneup/battery/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/avg/tuneup/battery/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/i;->b:Lcom/avg/tuneup/battery/c;

    iput-object p2, p0, Lcom/avg/tuneup/battery/i;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/i;->a:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->sb_notification:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/i;->a:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_notification:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/i;->a:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->sb_notification:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/i;->a:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_notification:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
