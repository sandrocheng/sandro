.class public Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "CustomRulesFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/avast/android/mobilesecurity/t;

.field private c:I

.field private d:Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->c:I

    .line 44
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/j;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/firewall/j;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->d:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    .line 183
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f07010d

    const v2, 0x7f0700cd

    .line 144
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 150
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 152
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->c:I

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-static {p1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a:Landroid/net/Uri;

    .line 78
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomRulesFragment.reloadFromArguments(), uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x2718

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    invoke-virtual {v0, p2}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 170
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->c:I

    .line 171
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a()V

    .line 172
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "/ms/firewall/customRules"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 67
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 69
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/l;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/l;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/h;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->d:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x7f07023a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->b:Lcom/avast/android/mobilesecurity/t;

    .line 61
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 122
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 123
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 124
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 164
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const v0, 0x7f030046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/firewall/k;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/firewall/k;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f07010d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p4, p5}, Lcom/avast/android/mobilesecurity/h;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 180
    :cond_0
    return-void
.end method
