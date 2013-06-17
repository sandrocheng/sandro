.class public abstract Lcom/avg/widget/model/plugin/WidgetTrialPlugin;
.super Lcom/avg/widget/model/plugin/WidgetPlugin;


# instance fields
.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Z


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Lcom/avg/widget/model/plugin/a;IIIIZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/avg/widget/model/plugin/WidgetPlugin;-><init>(Lcom/avg/widget/model/plugin/a;ZZ)V

    iput p2, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->d:I

    iput p3, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->e:I

    iput p4, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->f:I

    iput p5, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->g:I

    iput-boolean p6, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->h:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/avg/toolkit/e/a;)V
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->d:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->e:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->f:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->g:I

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/widget/model/plugin/WidgetTrialPlugin;->h:Z

    return v0
.end method
