.class Lcom/avast/android/mobilesecurity/app/manager/g;
.super Landroid/os/AsyncTask;
.source "AppDetailFragment.java"


# instance fields
.field final a:Ljava/util/regex/Pattern;

.field final b:Ljava/util/regex/Pattern;

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 647
    const-string v0, "([0-9]+).*?([0-9]+)%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->a:Ljava/util/regex/Pattern;

    .line 649
    const-string v0, "^([0-9]+) \\S+ ([A-Z]) [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ ([0-9]+) ([0-9]+) [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ [\\-0-9]+ ([0-9]+) [\\-0-9]+ [\\-0-9]+ ([0-9]+) .*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;Lcom/avast/android/mobilesecurity/app/manager/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/g;-><init>(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 715
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->g(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Lcom/avast/android/mobilesecurity/app/manager/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/manager/a/b;->a(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avast/android/mobilesecurity/app/manager/h;->f:J

    .line 717
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 719
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iput v5, v1, Lcom/avast/android/mobilesecurity/app/manager/h;->h:I

    .line 720
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 721
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 722
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget v2, v0, Lcom/avast/android/mobilesecurity/app/manager/h;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/manager/h;->h:I

    goto :goto_0

    .line 725
    :cond_1
    new-array v0, v5, [Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/g;->publishProgress([Ljava/lang/Object;)V

    .line 728
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 731
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_2

    .line 733
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 735
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->a:C

    .line 736
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->b:I

    .line 737
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->c:I

    .line 738
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->e:I

    .line 739
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->g:I

    .line 740
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/g;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 744
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 754
    :goto_1
    :try_start_3
    const-string v0, "AppDetailGragment$ProcessDataTask - get CPU info"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 755
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "top -s cpu -n 1"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 756
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 759
    :try_start_4
    const-string v0, "AppDetailGragment$ProcessDataTask - get CPU info DONE"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 761
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 762
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v6, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->d:Ljava/lang/String;

    .line 766
    const-string v0, "AppDetailGragment$ProcessDataTask - get CPU info DONE FOUND"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 767
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/g;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 772
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 773
    const-string v1, "AppDetailGragment$ProcessDataTask - get CPU info CLOSE STREAM"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    :goto_3
    return-void

    .line 744
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 746
    :catch_1
    move-exception v0

    .line 747
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v0, v5}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;I)I

    .line 748
    new-array v0, v5, [Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/g;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 749
    :catch_2
    move-exception v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 772
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 773
    const-string v0, "AppDetailGragment$ProcessDataTask - get CPU info CLOSE STREAM"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 675
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 678
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/g;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->e(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 680
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v1

    if-nez v1, :cond_3

    .line 682
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 683
    if-eqz v1, :cond_3

    .line 684
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 685
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v5, v2

    .line 686
    iget-object v8, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v8}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 687
    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v7, v8}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;I)I

    .line 688
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found new running process for package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v8}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->c(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with PID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v8}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 685
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 693
    :cond_2
    new-array v1, v3, [Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/manager/g;->publishProgress([Ljava/lang/Object;)V

    .line 694
    monitor-enter p0

    .line 696
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :cond_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/manager/g;->a()V

    .line 707
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_0

    .line 699
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 711
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 697
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    return-void
.end method

.method protected varargs a([Lcom/avast/android/mobilesecurity/app/manager/h;)V
    .locals 9
    .parameter

    .prologue
    const v2, 0x7f0700d0

    const/4 v8, 0x1

    const/high16 v7, 0x4480

    const v3, 0x7f0700d4

    const/4 v6, 0x0

    .line 782
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/g;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->h(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)V

    .line 786
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->f(Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget-char v2, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->a:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget v2, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->b:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget v2, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->c:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/manager/h;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 797
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget v2, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    const v3, 0x7f0c00d1

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->a:Ljava/text/NumberFormat;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget-wide v4, v4, Lcom/avast/android/mobilesecurity/app/manager/h;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%.1fM"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget v3, v3, Lcom/avast/android/mobilesecurity/app/manager/h;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    div-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->b:Lcom/avast/android/mobilesecurity/app/manager/h;

    iget v2, v2, Lcom/avast/android/mobilesecurity/app/manager/h;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    :cond_0
    :goto_1
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 805
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c02e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 807
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d3

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d6

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d5

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d8

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/g;->c:Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0700d7

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 645
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 663
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 664
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/g;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 669
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 670
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    check-cast p1, [Lcom/avast/android/mobilesecurity/app/manager/h;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/manager/g;->a([Lcom/avast/android/mobilesecurity/app/manager/h;)V

    return-void
.end method
