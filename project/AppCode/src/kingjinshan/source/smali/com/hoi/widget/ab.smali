.class final Lcom/hoi/widget/ab;
.super Ljava/lang/Object;
.source "PeriodPicker.java"

# interfaces
.implements Lcom/hoi/widget/aa;


# instance fields
.field final synthetic a:Lcom/hoi/widget/PeriodPicker;


# direct methods
.method constructor <init>(Lcom/hoi/widget/PeriodPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    invoke-static {v0, p1}, Lcom/hoi/widget/PeriodPicker;->a(Lcom/hoi/widget/PeriodPicker;I)I

    .line 49
    iget-object v0, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    invoke-static {v0}, Lcom/hoi/widget/PeriodPicker;->a(Lcom/hoi/widget/PeriodPicker;)Lcom/hoi/widget/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    invoke-static {v0}, Lcom/hoi/widget/PeriodPicker;->a(Lcom/hoi/widget/PeriodPicker;)Lcom/hoi/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    iget-object v1, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    invoke-static {v1}, Lcom/hoi/widget/PeriodPicker;->b(Lcom/hoi/widget/PeriodPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/hoi/widget/ab;->a:Lcom/hoi/widget/PeriodPicker;

    invoke-static {v2}, Lcom/hoi/widget/PeriodPicker;->c(Lcom/hoi/widget/PeriodPicker;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/hoi/widget/ad;->a(II)V

    .line 53
    :cond_0
    return-void
.end method
