.class Lcom/actionbarsherlock/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$3;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$3;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/e/a;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$200(Lcom/actionbarsherlock/widget/SearchView;)Landroid/support/v4/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$3;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/e/a;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$200(Lcom/actionbarsherlock/widget/SearchView;)Landroid/support/v4/e/a;

    move-result-object v0

    instance-of v0, v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$3;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #getter for: Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/e/a;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$200(Lcom/actionbarsherlock/widget/SearchView;)Landroid/support/v4/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 172
    :cond_0
    return-void
.end method
