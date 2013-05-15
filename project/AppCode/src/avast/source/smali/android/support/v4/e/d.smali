.class Landroid/support/v4/e/d;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# instance fields
.field final synthetic a:Landroid/support/v4/e/a;


# direct methods
.method private constructor <init>(Landroid/support/v4/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/e/a;Landroid/support/v4/e/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Landroid/support/v4/e/d;-><init>(Landroid/support/v4/e/a;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/e/a;->mDataValid:Z

    .line 473
    iget-object v0, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/e/a;->mDataValid:Z

    .line 479
    iget-object v0, p0, Landroid/support/v4/e/d;->a:Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->notifyDataSetInvalidated()V

    .line 480
    return-void
.end method
