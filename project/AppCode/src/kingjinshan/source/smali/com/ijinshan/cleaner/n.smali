.class public final Lcom/ijinshan/cleaner/n;
.super Ljava/lang/Object;
.source "CleanHistory.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    .line 25
    if-nez p0, :cond_0

    move v0, v2

    .line 31
    :goto_0
    return v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 38
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 40
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->canClearHistory(Landroid/content/ContentResolver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    .line 53
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.google.android.gmail.SuggestionProvider"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 56
    return-void
.end method

.method public final f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    .line 60
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.google.android.maps.SearchHistoryProvider"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 63
    const-string v0, "content://com.google.android.maps.SearchHistoryProvider/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ijinshan/cleaner/n;->a:Landroid/content/Context;

    .line 72
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    const-string v2, "com.android.vending.SuggestionsProvider"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 74
    return-void
.end method
