.class final Landroid/app/ActivityThread$Profiler;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Profiler"
.end annotation


# instance fields
.field autoStopProfiler:Z

.field handlingProfiling:Z

.field profileFd:Landroid/os/ParcelFileDescriptor;

.field profileFile:Ljava/lang/String;

.field profiling:Z

.field samplingInterval:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProfiler(Landroid/app/ProfilerInfo;)V
    .locals 2
    .param p1, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .prologue
    .line 473
    iget-object v0, p1, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 474
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v1, :cond_1

    .line 475
    if-eqz v0, :cond_0

    .line 477
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 486
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    :cond_2
    :goto_1
    iget-object v1, p1, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 493
    iget v1, p1, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v1, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 494
    iget-boolean v1, p1, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v1, p0, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    goto :goto_0

    .line 487
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public startProfiling()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 497
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/high16 v2, 0x800000

    const/4 v3, 0x0

    iget v8, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    if-eqz v8, :cond_2

    :goto_1
    iget v5, p0, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v6

    .line 505
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profiling failed on path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 509
    :catch_1
    move-exception v7

    .line 510
    .local v7, "e2":Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "e2":Ljava/io/IOException;
    :cond_2
    move v4, v5

    .line 501
    goto :goto_1
.end method

.method public stopProfiling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    if-eqz v0, :cond_1

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread$Profiler;->profiling:Z

    .line 517
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 518
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_0
    :goto_0
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 525
    iput-object v1, p0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 527
    :cond_1
    return-void

    .line 521
    :catch_0
    move-exception v0

    goto :goto_0
.end method
